Return-Path: <clang-built-linux+bncBCX7HX6VTEARBNOK46BAMGQEL2U5XOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id E9532345E96
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 13:55:17 +0100 (CET)
Received: by mail-ej1-x637.google.com with SMTP id fy8sf1000540ejb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 05:55:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616504117; cv=pass;
        d=google.com; s=arc-20160816;
        b=PAo05Rubvd1xHkjGqY/925Wf6RDyRrBUoPilxu8ssv5N1tV9j23fD6wl0glOXE7Epp
         WH8gMeIt2nnDxjx/kLR2LqUO8S9G5PRgJ5g/dU9fOgFm8KDr8hhttcrpu0faDPSxG9I/
         ii6whLm3/ILjNRYQlkW1it7KgSukow8GaVJm5uuF5lP0LsiKAX0PKzi+x3vzMRJ/L4yQ
         5QYR2da7QUzLKLpIgwj/f1zzUgArwlcrY0RjWyBpZ7xvyvlbKsoa2rSvYNPDE+gtUe7H
         olj3A8AngHzpB2RUoX97cPRRl41B/Jw+rLMR+0uzL1Is35C3PTauD3rplkxGs76TcNyu
         B3DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:from
         :references:cc:to:sender:dkim-signature:dkim-signature;
        bh=bg2G5tTr+c2OVCO15WDaQ+YZNOR4r/6UGvoOR1xuCaE=;
        b=TLwl8cNH9Msu0nlpkrpECqE6UqvrWB99l8cIq2V3usdIS6F2UX9srTJsthR8lAQUc4
         OxxThaouVDya/zWHOI+NCm4vEZHBDBaqPsYapsyiDWFi4XaE3LnATwDyzhbuNCFcfp/u
         IUeA06KixjYqHG3Jt344Cx0ei9wE+dbsNSUkW4iDYyIpCRLAkkbxcZvLGIwMdMWpAprD
         aKTvfl/OQOOgS5oRa3TmRs166CdM6gY6w2kTKUnFeiaqtgPNi+hwc73Q3695aBOZMgdD
         pAyrZ4LgG7r/kYkZORaMt5zb9Iu1UKLapZ2ZeoLeyxOFRRothsHpupGFa3RLBfRxK7FD
         Bimw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jq/cp1a2";
       spf=pass (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bg2G5tTr+c2OVCO15WDaQ+YZNOR4r/6UGvoOR1xuCaE=;
        b=lWYcjN32NNdxQiMpZPgLeENrfRRvUt7uer5KMr6rVDVPcFlgJ6Tu95MVpe9VPI2sS3
         Br9DLfDw2XqYOve+WueyyoJ7/T/casoXxRxAfxhyCf2HeDDbsHCKEkOKu7AmLTUsAVGJ
         8YXVb2j4reTe5foogtm8oM4llpOKu66Fx2r6Gkyb46s6mYkvIME5bk6MGfmXLOTgJmQP
         hDszSiT4U8HseTV/N+Ih9rgS16TWQWc8h7/Nva2iJfENx2RHbg416QfToQdFds/0bZM6
         +q18HiuGqbeWAOs6itUn5tyn9WmzOu4S2+4LDNQks9hcz36Wx8cit4osw2PraqoXd9gs
         zC2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bg2G5tTr+c2OVCO15WDaQ+YZNOR4r/6UGvoOR1xuCaE=;
        b=oOB/nnBf2D2PHTTY6epppNbC2Vc2iam4S5Tdqd7qdo7yT1E63sUi6U9HeglAvoEYkG
         ECZhYRbhHr2c9BURKKViFyvkT+xiXtZObo7aKmYosfDhsRugGTGTPK410kFaR3u6S+jf
         w9bQYEJQzeLJ/Y1OT8/jFJImWn3JDhYcxPpJ1BjpxUhK7fiHmVOPLTNALNDWUhNsdug5
         UtkFZg0wljcQXhyL0zwhddIJWu0ShC+Y+EPcWz0VZc/f+URwH6b7VxgaHZYJFbZ2y/ZP
         y9KQjxE2rjvNmO0Fiodk6cMl65nr8OtWcE51z9hiwLMzIAXaqh6xyvcW1Q98rAJ+pC45
         KDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bg2G5tTr+c2OVCO15WDaQ+YZNOR4r/6UGvoOR1xuCaE=;
        b=eK6ZXIcWiCxzW25QimH6t6t9k1wmzbzAphl21fxP5FW2vIG5+21KyP1Zy6rziZdVAa
         2Hussu5rjA4tA4GGxngHPq7bkJyVI8/39a3qK/nfNPSXge83ABu1oRoYB3gCHObIkAe3
         wV/7auuRbEkRz19m1ZlvIcoTPqmyYVraNDFocDTamYAHx9/6uTLhwIeC5kpd7Eb92xDi
         k1ARfoSN3XUkj9wzANEQw4ucT8vvFfOYSTcO+rkSzLWtO2jv9eEFcKxMJNq8Svw4xX6e
         l/shywnn/lPxNW4IbVkntkFEeF5dN2S/dLaJJILh0ErNuy7iVG1V+ovtxE7znTAHoy/5
         9lQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530k3MEUzd5EbzMXubAbydlvhhNllO3kpNy6+zbDUKPtINF7uiuw
	vcX249HVN5UfiJpFTpC+6YM=
X-Google-Smtp-Source: ABdhPJynmknWYJ9mIKyE2dYR6Lpsf2f65e4t0PutEoVUH8oITy9U2/83y4DTK7200gnabeVzRXnrzA==
X-Received: by 2002:aa7:d385:: with SMTP id x5mr4485858edq.289.1616504117705;
        Tue, 23 Mar 2021 05:55:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d788:: with SMTP id s8ls5099991edq.1.gmail; Tue, 23 Mar
 2021 05:55:16 -0700 (PDT)
X-Received: by 2002:aa7:d54c:: with SMTP id u12mr4653483edr.234.1616504116566;
        Tue, 23 Mar 2021 05:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616504116; cv=none;
        d=google.com; s=arc-20160816;
        b=MXipm+plOZ2CHDpWb9Wmu+zDXHUiVgs+Mkl7NGiMvJrTfVX8amyDHQgvgupX69XA8E
         Ea0qAhu6yqFCO6OVqmgpPwicBYPzXbRKuL3rtu3h9R8FhkC2h/ktsRUxZIc4UilCE/BL
         yCqAP6JkCPjNfN+8mBBAmzTDhWcgZgbqnpOqK7vYvqirISLUDGLuMt+PIipjk4wL0Xhg
         u1NZEUGXy0Arkt/zD4mg7SLyOXtukTOm20Ge+NcT+rJ6IBDfzyX/aWMRGKPq6ILn6Bvg
         95ZKjllQQdShyXgia3ytxdkeVxdOwCkL5Py1o//H1UdEE/XaLewQiAyT+sXWOKe1Nldh
         RuTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=0tpK+bb5/V3Rx4+tgn1H3N6rbl8/OyysuEQXixv3InU=;
        b=XhP5GpK6PGIhqQQFbh6O4MWUxYwq5ERnQg5YHZ4Vk93qwkPKLEttCGl8PwdGaW0WSm
         TUyAIRjdEQloMyOQ6LS2ksAHbiXfo0CltToqG2cyTAxHHkWaUjZeNLve9bDCeheQ1/oT
         dPF1ts2T9pIzm4UKHm3VHMjiL9K8ZZe0Nst+ae1qNtxMnkY+DJ35cPGYlTVZFlSfgvhj
         RvtBeYe/eAg6I8T0MPSTnbxJEutM9oC8XZs9tcg1oBQy1bl63r3YHQCRt6sWjoFUn38n
         ROEJ0iD0azNy30ZqAoKCQXJWMqcX6rxHlDdeBF5H3iqP/QVDvHSE89RFGco7yVMYr/dP
         EfvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jq/cp1a2";
       spf=pass (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id r21si771758ejo.0.2021.03.23.05.55.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 05:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Received: by mail-wr1-x42b.google.com with SMTP id c8so7749877wrq.11
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 05:55:16 -0700 (PDT)
X-Received: by 2002:adf:f587:: with SMTP id f7mr3865437wro.147.1616504116317;
        Tue, 23 Mar 2021 05:55:16 -0700 (PDT)
Received: from [192.168.8.186] ([85.255.236.147])
        by smtp.gmail.com with ESMTPSA id x11sm2816399wme.9.2021.03.23.05.55.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 05:55:15 -0700 (PDT)
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Jens Axboe <axboe@kernel.dk>
References: <202103231939.qtWh2L33-lkp@intel.com>
From: Pavel Begunkov <asml.silence@gmail.com>
Autocrypt: addr=asml.silence@gmail.com; prefer-encrypt=mutual; keydata=
 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 bA==
Subject: Re: fs/io_uring.c:6920:12: warning: stack frame size of 1040 bytes in
 function 'io_submit_sqes'
Message-ID: <a8a053dd-5ba1-5c03-8915-f84c7938adf9@gmail.com>
Date: Tue, 23 Mar 2021 12:51:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <202103231939.qtWh2L33-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: asml.Silence@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="jq/cp1a2";       spf=pass
 (google.com: domain of asml.silence@gmail.com designates 2a00:1450:4864:20::42b
 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;       dmarc=pass
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

On 23/03/2021 11:31, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   84196390620ac0e5070ae36af84c137c6216a7dc
> commit: e5d1bc0a91f16959aa279aa3ee9fdc246d4bb382 io_uring: defer flushing cached reqs
> date:   6 weeks ago
> config: powerpc64-randconfig-r023-20210323 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e5d1bc0a91f16959aa279aa3ee9fdc246d4bb382
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout e5d1bc0a91f16959aa279aa3ee9fdc246d4bb382
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> fs/io_uring.c:6920:12: warning: stack frame size of 1040 bytes in function 'io_submit_sqes' [-Wframe-larger-than=]
>    static int io_submit_sqes(struct io_ring_ctx *ctx, unsigned int nr)
>               ^
>    1 warning generated. b

I don't know, for up-to-date code all submission functions are under
128 bytes for me, including io_submit_sqes with everything heavily
inlined into it. I believe it's just a strange config keeping
everything on stack for some reason (too under optimised?).


> 
> 
> vim +/io_submit_sqes +6920 fs/io_uring.c
> 
> 0553b8bda8709c Pavel Begunkov 2020-04-08  6919  
> 0f2122045b9462 Jens Axboe     2020-09-13 @6920  static int io_submit_sqes(struct io_ring_ctx *ctx, unsigned int nr)
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6921  {
> 863e05604a6fb4 Pavel Begunkov 2020-10-27  6922  	struct io_submit_link link;
> 9e645e1105ca60 Jens Axboe     2019-05-10  6923  	int i, submitted = 0;
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6924  
> c4a2ed72c9a615 Jens Axboe     2019-11-21  6925  	/* if we have a backlog and couldn't flush it all, return BUSY */
> ad3eb2c89fb24d Jens Axboe     2019-12-18  6926  	if (test_bit(0, &ctx->sq_check_overflow)) {
> 6c503150ae33ee Pavel Begunkov 2021-01-04  6927  		if (!__io_cqring_overflow_flush(ctx, false, NULL, NULL))
> 1d7bb1d50fb4dc Jens Axboe     2019-11-06  6928  			return -EBUSY;
> ad3eb2c89fb24d Jens Axboe     2019-12-18  6929  	}
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6930  
> ee7d46d9db19de Pavel Begunkov 2019-12-30  6931  	/* make sure SQ entry isn't read before tail */
> ee7d46d9db19de Pavel Begunkov 2019-12-30  6932  	nr = min3(nr, ctx->sq_entries, io_sqring_entries(ctx));
> 9ef4f124894b7b Pavel Begunkov 2019-12-30  6933  
> 2b85edfc0c90ef Pavel Begunkov 2019-12-28  6934  	if (!percpu_ref_tryget_many(&ctx->refs, nr))
> 2b85edfc0c90ef Pavel Begunkov 2019-12-28  6935  		return -EAGAIN;
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6936  
> d8a6df10aac9f2 Jens Axboe     2020-10-15  6937  	percpu_counter_add(&current->io_uring->inflight, nr);
> faf7b51c06973f Jens Axboe     2020-10-07  6938  	refcount_add(nr, &current->usage);
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6939  
> ba88ff112bdfde Pavel Begunkov 2021-02-10  6940  	io_submit_state_start(&ctx->submit_state, nr);
> 863e05604a6fb4 Pavel Begunkov 2020-10-27  6941  	link.head = NULL;
> b14cca0c84c760 Pavel Begunkov 2020-01-17  6942  
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6943  	for (i = 0; i < nr; i++) {
> 3529d8c2b353e6 Jens Axboe     2019-12-19  6944  		const struct io_uring_sqe *sqe;
> 196be95cd55720 Pavel Begunkov 2019-11-07  6945  		struct io_kiocb *req;
> 1cb1edb2f5ba8a Pavel Begunkov 2020-02-06  6946  		int err;
> fb5ccc98782f65 Pavel Begunkov 2019-10-25  6947  
> b1e50e549b1372 Pavel Begunkov 2020-04-08  6948  		sqe = io_get_sqe(ctx);
> b1e50e549b1372 Pavel Begunkov 2020-04-08  6949  		if (unlikely(!sqe)) {
> b1e50e549b1372 Pavel Begunkov 2020-04-08  6950  			io_consume_sqe(ctx);
> b1e50e549b1372 Pavel Begunkov 2020-04-08  6951  			break;
> b1e50e549b1372 Pavel Begunkov 2020-04-08  6952  		}
> 258b29a93bfe74 Pavel Begunkov 2021-02-10  6953  		req = io_alloc_req(ctx);
> 196be95cd55720 Pavel Begunkov 2019-11-07  6954  		if (unlikely(!req)) {
> 196be95cd55720 Pavel Begunkov 2019-11-07  6955  			if (!submitted)
> 196be95cd55720 Pavel Begunkov 2019-11-07  6956  				submitted = -EAGAIN;
> fb5ccc98782f65 Pavel Begunkov 2019-10-25  6957  			break;
> 196be95cd55720 Pavel Begunkov 2019-11-07  6958  		}
> 709b302faddfac Pavel Begunkov 2020-04-08  6959  		io_consume_sqe(ctx);
> d3656344fea033 Jens Axboe     2019-12-18  6960  		/* will complete beyond this point, count as submitted */
> d3656344fea033 Jens Axboe     2019-12-18  6961  		submitted++;
> d3656344fea033 Jens Axboe     2019-12-18  6962  
> 258b29a93bfe74 Pavel Begunkov 2021-02-10  6963  		err = io_init_req(ctx, req, sqe);
> ef4ff581102a91 Pavel Begunkov 2020-04-12  6964  		if (unlikely(err)) {
> 1cb1edb2f5ba8a Pavel Begunkov 2020-02-06  6965  fail_req:
> e1e16097e265da Jens Axboe     2020-06-22  6966  			io_put_req(req);
> e1e16097e265da Jens Axboe     2020-06-22  6967  			io_req_complete(req, err);
> fb5ccc98782f65 Pavel Begunkov 2019-10-25  6968  			break;
> 196be95cd55720 Pavel Begunkov 2019-11-07  6969  		}
> fb5ccc98782f65 Pavel Begunkov 2019-10-25  6970  
> 354420f705ccd0 Jens Axboe     2020-01-08  6971  		trace_io_uring_submit_sqe(ctx, req->opcode, req->user_data,
> 2d7e935809b7f7 Pavel Begunkov 2021-01-19  6972  					true, ctx->flags & IORING_SETUP_SQPOLL);
> c5eef2b9449ba2 Pavel Begunkov 2021-02-10  6973  		err = io_submit_sqe(req, sqe, &link);
> 1d4240cc9e7bb1 Pavel Begunkov 2020-04-12  6974  		if (err)
> 1d4240cc9e7bb1 Pavel Begunkov 2020-04-12  6975  			goto fail_req;
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6976  	}
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6977  
> 9466f43741bc08 Pavel Begunkov 2020-01-25  6978  	if (unlikely(submitted != nr)) {
> 9466f43741bc08 Pavel Begunkov 2020-01-25  6979  		int ref_used = (submitted == -EAGAIN) ? 0 : submitted;
> d8a6df10aac9f2 Jens Axboe     2020-10-15  6980  		struct io_uring_task *tctx = current->io_uring;
> d8a6df10aac9f2 Jens Axboe     2020-10-15  6981  		int unused = nr - ref_used;
> 9466f43741bc08 Pavel Begunkov 2020-01-25  6982  
> d8a6df10aac9f2 Jens Axboe     2020-10-15  6983  		percpu_ref_put_many(&ctx->refs, unused);
> d8a6df10aac9f2 Jens Axboe     2020-10-15  6984  		percpu_counter_sub(&tctx->inflight, unused);
> d8a6df10aac9f2 Jens Axboe     2020-10-15  6985  		put_task_struct_many(current, unused);
> 9466f43741bc08 Pavel Begunkov 2020-01-25  6986  	}
> 863e05604a6fb4 Pavel Begunkov 2020-10-27  6987  	if (link.head)
> c5eef2b9449ba2 Pavel Begunkov 2021-02-10  6988  		io_queue_link_head(link.head);
> ba88ff112bdfde Pavel Begunkov 2021-02-10  6989  	io_submit_state_end(&ctx->submit_state, ctx);
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6990  
> ae9428ca61271b Pavel Begunkov 2019-11-06  6991  	 /* Commit SQ ring head once we've consumed and submitted all SQEs */
> ae9428ca61271b Pavel Begunkov 2019-11-06  6992  	io_commit_sqring(ctx);
> ae9428ca61271b Pavel Begunkov 2019-11-06  6993  
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6994  	return submitted;
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6995  }
> 6c271ce2f1d572 Jens Axboe     2019-01-10  6996  
> 
> :::::: The code at line 6920 was first introduced by commit
> :::::: 0f2122045b946241a9e549c2a76cea54fa58a7ff io_uring: don't rely on weak ->files references
> 
> :::::: TO: Jens Axboe <axboe@kernel.dk>
> :::::: CC: Jens Axboe <axboe@kernel.dk>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
Pavel Begunkov

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a8a053dd-5ba1-5c03-8915-f84c7938adf9%40gmail.com.
