<!-- Comment and reply system starts here -->

<div style="text-align: center; padding-bottom:30px;">

    <h1 style="font-size: 30px; text-align:center; padding-top: 20px; padding-bottom:20px">Comments</h1>
    <form action="{{ url('add_comment') }}" method="POST">

        @csrf

        <textarea name="comment" placeholder="Comment something here" style="color:black; height:150px; width:600px;"> </textarea>

        <br><br>
        <input type="submit" class="btn btn-primary" value="Comment">
    </form>

</div>

<div style="padding-left: 20%;">

    <h1 style="font-size:20px; padding-bottom: 20px;">All Comments</h1>

    @foreach ($comments as $comment )



        <div>
            <b>{{ $comment->name }}</b>
            <p>{{ $comment->comment }}</p>

            <a style="color:blue" href="javascript::void(0);" onclick="reply(this)" data-Commentid="{{ $comment->id }}">Reply</a>


            @foreach ($replies as $rep)

                @if($rep->comment_id==$comment->id)

                    <div style="padding-left:3%; padding-bottom: 10px; padding-top:10px">

                        <b>{{ $reply->name }}</b>
                        <p>{{ $rep->reply }}</p>

                        <a style="color:blue" href="javascript::void(0);" onclick="reply(this)" data-Commentid="{{ $comment->id }}">Reply</a>

                    </div>

                @endif

            @endforeach

        </div>

    @endforeach






    <div style="display: none;" class="replyDiv">

        <form action="{{ url('add_reply') }}" method="post">

            @csrf

            <input type="text" id="commentID"  name="commentId" hidden="">
            <textarea style="height: 100px; width: 500px;" name="reply" placeholder="Write something here" ></textarea>

            <br>

            <button type="submit" class="btn btn-warning">Reply</button>
            <a href="javascript::void(0);" class="btn" onclick="reply_close(this)">Close</a>

        </form>
    </div>

</div>



<!-- Comment and reply system ends here -->

<script type="text/javascript">

    function reply(caller)
    {

        document.getElementById('commentID').value=$(caller).attr('data-Commentid')
        $('.replyDiv').insertAfter($(caller))

        $('.replyDiv').show()
    }

    function reply_close(caller)
    {


        $('.replyDiv').hide()
    }
</script>
