Return-Path: <clang-built-linux+bncBDS3F25HWMCRB3UZ574QKGQEBLITMLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F272484F7
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 14:43:28 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id jm22sf12353976pjb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 05:43:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597754607; cv=pass;
        d=google.com; s=arc-20160816;
        b=jan57IvCaaO7ZOlwQESYSwv4HTQgv0p+Q3Q7UvOBADe8Dmw7dCgrNWapThMTHBv9Q4
         6Z2gHtQg93xYBMQOqQBSzPLoDsv0AeVYTk8ijo8hETFJrGgO/mraOk9GTiQ0YH8hmFZ3
         HQfjeE+gt7F058wfXsig5jbc3NirsbMle2id6/Eh5gGUjmmU+SJekJPFAFOl9sAyjQhC
         RSjbal4dqBiRtXYgMoTwDsKNlq+nqD0kxcqNX2m9R4AwVUQgAvLB4ZhdHaXz04RctCNJ
         LkIq3ZobvzOYNuD8dNe8wI4sXzjeUGljQUfDr6wSp4KeI4v3tfOsEdzYhzn+aJo9kifP
         ZZiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=bTNTrmBAl/cil8D2MFFGhBgN9kbhk0iruz6lRVYgEJ4=;
        b=qxgZv50tAMM2vz4/ASvGx/AQa/mumIlFh/SYPzlw+Z8M0wO8eU5drv+gclnABqg2/+
         CKJTiYsxHfkqyk2EG7CF8Adbc77J9kxG4HC2xzwtP5wUlgAPzeWYZTIRg4oQomwKCw9s
         59QHVn7V7tfZTDxjIfaJohYLiw/LU8OLVBk6fjiqecc8ngZUyxtPyxUK343kG5dJZkua
         VUhyeUIqeaItv65VeZua7mbbuR6WBOAHb1fNjciGc+/3p23KLuLJN9p96GmiXEAPc+01
         tqAGH3LU70U5X+CgHwTAHd5a8qoFGd8clweJy4ExToiZ03n4wJkkwvmkIE/lGFyI90QQ
         hm1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVRBvpJp;
       spf=pass (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=brookebasile@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bTNTrmBAl/cil8D2MFFGhBgN9kbhk0iruz6lRVYgEJ4=;
        b=hv/gONLvK5duL8tjtgWD8jsWSmIlS1ZYdoBa4jp5IoXQtBDzduDT8WESuBVCD+vgcq
         25iQXEITysgGd1PdjPAvGd9vGd6f9/5DqaDrWzCIutk2QpcxlzSi5Y4aS8ylGxPOvmwV
         6sla87hmEUQyuFYKSJNnWLlB31vYiloRByt9rhKLBC6uA8yiSsOpPjR4rTcSauTRTItB
         rmAExBlD8tczEsgpjtADTPywA/IKGfjh5OAGjcHg+RT/Jb01vZAzInjZGVZNmfachWCP
         0l8So/rQKuZ4WplJ6yMe1PBWIU3jgcnBkZl4w7dK1U9qFwcpjzVy/JGptTwIrQ796Csq
         20aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bTNTrmBAl/cil8D2MFFGhBgN9kbhk0iruz6lRVYgEJ4=;
        b=SmTFCh1Or+vJ28Gew87ny9EJO9LAp+p7ZEPmMuBnNIxk4lBSauwo6dbqivIjH0F4vJ
         KpwXmHS7V3VI5yRh2ILZ6vTCAcAVykyV4zkRnisRcy0noZ06q3yGCGbp7eiNbaZYAayi
         PpijcEbZlhejKIMsMOzlTiFfbTeDrTQgHr2i92KrW+e3DnWR/so479ttHj7i74F1YLTM
         juJugLkN3AN9/eiXYysA47S6mOD1IXlVLQreUotuaRhHVNF9H0NwzdbSydTv3Iy02yOl
         VLr0g/0c7fVUom+C1re5otprTw6So7Sf5/hB+SMUpM7LYyqRUQML0LKD1G9ZogCueIRz
         wr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bTNTrmBAl/cil8D2MFFGhBgN9kbhk0iruz6lRVYgEJ4=;
        b=VOrkPnoxdBCPgubkgUVzP8heXLSGLJpZVwAn3xe/84Psr+iSeziZ/52PUXanobXzow
         b7tvUTtAKSOp+Z0onhm5/hsq2mi0a2gURQD7Wn88txqj7iqqDHy8QnkDIUDxyzhIoPcg
         uN4orj1Z/qeAHhUJE9T3qJlBiFkpER7xZuVckbQURYQ5G29JM1qJMB9z+u0J8WK/UyJV
         dw+pkUyDt/oZ0JVMwETKEjW+7AFTR74beKc+xpxDMh7v7mK0Z3+oASafuXm32dHq4rkq
         0Hz0XAmAgiUoNtQWfrGo8+0LWicxwjn5uUSOq73IgWkGeDmQnVCm0inBonlE98IaIjS8
         vtmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532n9+3vBg9rPeWoaGFB7eFak9vSD9YFoYAQR/5Q+NjDvJY/FcHl
	1Z9STzAyazfE0kpDIdxj/Lw=
X-Google-Smtp-Source: ABdhPJyCcsGyQBhvsMM6IbpBo4sdj8pFkijbrqvGLPCZNvt7VH8oPAsVIStWS8K6n6+uW8FyjoD0KQ==
X-Received: by 2002:a17:902:c192:: with SMTP id d18mr15106137pld.305.1597754607061;
        Tue, 18 Aug 2020 05:43:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls5580080pgp.10.gmail; Tue, 18
 Aug 2020 05:43:26 -0700 (PDT)
X-Received: by 2002:a63:c252:: with SMTP id l18mr13677565pgg.349.1597754606535;
        Tue, 18 Aug 2020 05:43:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754606; cv=none;
        d=google.com; s=arc-20160816;
        b=PHwizvH6Mn62eAgLWXj93J1apStfxcXR+dtLNtUGrW3P9KTxyCpW6C+V3F5mDwsYON
         SpbO6p8feUBRJLTiZaZkvdkIVKPYwo6+/9nY7m00YjwquBJjyLj3r4rHzvf31JEy9+8f
         M5xpYy9tBTnzHDQKjKD2NAaEKVzh5WNpT5taJfq87ncUO+MnjZzx4rzVDrOKgCdLLotN
         GLLmDt8BHFESS13wNfwHuDpvZo3uBFXvDpHRaao7rcwEFkI/CLXAGLN21Rdz/ehhUBln
         BAyHbvbQ0dUEqYraQxhp5INGcu7ulv8m7XZvMOzytYYLgtPACx2bbsy0gg4aZJUob4sk
         dAqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Lkwb0MC1U017Rc+5srV075yc1RB+zhRumqNLjycHzv0=;
        b=JnN8eK34e5L0ihj4BSQ4b7CkqFdweNgcXciY0vA5QsTcdJM/2xwFfklTCqDdmW1e5x
         VNrHud0QOM5fWUHVsYXkRgf7OCfsIsC+iihNrp07veAdv46V042Eom07v95oaJBh5JAd
         FRKR7REGtVDzdlfD8jj4wQZF26hM9FBDwPEwDgLHGVoYF1VewVn9ckDazFXga7JZGlPK
         kKvdEdayrYztaLpma66Qdt+vbCHX3OYyaR4xPNZgJlQNAfVuFdSeJuZV8ebMuJU+Wmvd
         Rm5pxvAyeAq/0ZJC0mIozbmW2J/f9bHqm/CaD7Owjya9EK6l0koSSYlFwrkskuoyRm7g
         01VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVRBvpJp;
       spf=pass (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=brookebasile@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id i18si1081960pju.2.2020.08.18.05.43.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:43:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 62so18024745qkj.7
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 05:43:26 -0700 (PDT)
X-Received: by 2002:a37:47cc:: with SMTP id u195mr16979523qka.39.1597754605328;
        Tue, 18 Aug 2020 05:43:25 -0700 (PDT)
Received: from [192.168.1.181] (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
        by smtp.gmail.com with ESMTPSA id y9sm21581828qka.0.2020.08.18.05.43.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:43:24 -0700 (PDT)
Subject: Re: [PATCH] block: rnbd: rnbd-srv: silence uninitialized variable
 warning
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: danil.kipnis@cloud.ionos.com, jinpu.wang@cloud.ionos.com,
 axboe@kernel.dk, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200818040317.5926-1-brookebasile@gmail.com>
 <20200818052957.GA2253299@ubuntu-n2-xlarge-x86>
From: Brooke Basile <brookebasile@gmail.com>
Message-ID: <2fd7f9c7-8558-0f81-6a8f-1366f1feb8a2@gmail.com>
Date: Tue, 18 Aug 2020 08:43:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200818052957.GA2253299@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: brookebasile@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bVRBvpJp;       spf=pass
 (google.com: domain of brookebasile@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=brookebasile@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On 8/18/20 1:29 AM, Nathan Chancellor wrote:
> I don't think this is a proper fix since the root cause of the warning
> appears to be that we are ignoring the return value of
> rnbd_bio_map_kern. Should we not set err to that value like this
> (completely untested)?
> 
> Cheers,
> Nathan
> 
> diff --git a/drivers/block/rnbd/rnbd-srv.c b/drivers/block/rnbd/rnbd-srv.c
> index 0fb94843a495..1b71cb2a885d 100644
> --- a/drivers/block/rnbd/rnbd-srv.c
> +++ b/drivers/block/rnbd/rnbd-srv.c
> @@ -148,7 +148,8 @@ static int process_rdma(struct rtrs_srv *sess,
>   	/* Generate bio with pages pointing to the rdma buffer */
>   	bio = rnbd_bio_map_kern(data, sess_dev->rnbd_dev->ibd_bio_set, datalen, GFP_KERNEL);
>   	if (IS_ERR(bio)) {
> -		rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", PTR_ERR(bio));
> +		err = PTR_ERR(bio);
> +		rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", err);
>   		goto sess_dev_put;
>   	}
>   
> 

Ah, I see what you mean.  Thanks for the fix!

Best,
Brooke Basile

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2fd7f9c7-8558-0f81-6a8f-1366f1feb8a2%40gmail.com.
