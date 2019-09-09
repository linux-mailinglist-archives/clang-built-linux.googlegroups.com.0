Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJG43LVQKGQEQYVPZXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id E85F3ADFB7
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 21:55:16 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id ba12sf4431662edb.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 12:55:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568058916; cv=pass;
        d=google.com; s=arc-20160816;
        b=KS78qvHKgzDYhi4uDJnU37H2PD0uwb9nrTvZiWeyrVhfhrQkecDAGagnmCsdGlEBaN
         MO+hJmx/RodcQC5zj85QuaPDwreLSiZBst6c+Z2TU8pwiadqwhUjpgugIKKvhXrGaL0f
         2WA9qneB8wxH87jxQ12u1xZKkAc2w7CwTjixCQ5AdGi6xqi7jG2pSsKmeD5Tk97dFszG
         g4bkTxMlu1zGYLICRHOjKj9eN/iNYJAPqYR6ERGcSCuSer8BHDRvm7TZe9i/MDrGoOjZ
         tIc0H0DW6f0dsHdbmhRURo91MfDubeDnbKdtg/a0Q6+b7JqF/GDigScRN2qRlvC7r8gw
         fAUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=lt9rlzdCFp0+loI1epioC33c5UveEB6Rw3rYDFSS3OY=;
        b=szp5igJyWkKhk9oP44noBAOvE4wikWPhHCqyNmb14YKho74gNZMlFY1YXIzE9JsV+N
         Yv1k9XQ8vM2lbzvMLqmhrhwsa7ZH5dhNts9U6uOrUg0nFMsZBIbSO1R851fsJ+2l0hrC
         2QJxox8xeJmUNAduwLCdtT3v6FV3pHTgAw5gax7s1Il9PcXXCxiMeeAJAvtUWWZL9rs9
         ki4vY/65HJhbkltD0FBCvg5lzISFX2nZ4JsYzSdhi14vc+sGQPEIwGlkm8O/M9S2oE0j
         yuvwu0ipDSxTzstrS1y5XsgLyqEsOEiV0yGFgMHgc2aXH7D9/eFnfI2w6Ysf/NgSEfQx
         YIMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jsAXB23r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lt9rlzdCFp0+loI1epioC33c5UveEB6Rw3rYDFSS3OY=;
        b=DU4wo/Abms7m7CUfJMnv1Gf3ytmLKumFUDBaWHHtV/WxV/VyEz9anQM+ELOEU2fdTT
         1B6EFkrIyKz1eaXv+K6XpDsbxsaEMnpSzDj9XrcgfdsUPRl/M+QuR2/5TT4XfyleSz96
         mnd3ZMkMqnijgtBN51OK4mNlIHkrvPyCyIZ/knUAmJ2SIkaI1otQiaKNffcPY5HLpdTR
         poK1b00YAe4m7ud0eLoD7RSGzPoYrNvCGKAeexFPNZeTLlnwKWbuqAXN1ATxjW1grxK/
         sDqw/X1K6BMdn9btT7SIj/Q+hBaiVJNrTo4HSSFivYVBAGVm78rDYIlGGlZXVMEn/r8K
         GPLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lt9rlzdCFp0+loI1epioC33c5UveEB6Rw3rYDFSS3OY=;
        b=fAUbg7/+ICNPh4HO3W2R/LOQQ6Fdv2qnnYnnRzyrfaQKIhDiIAIxtd42DaXNamG1R9
         xgHqlrvNf2sLAHXArTlhx6JD+gfvT92+Krarrgvo8YF9CXXZu7NOKf1vahGrmf7R0i7w
         TkLoaxxJ8e2bEmPlvaYeYFdmnoIMHaDijnwDSz34eC1DOzElVV6EMlF34VBN7gxLzCL1
         D/+dmUFhHBpz7zhI6dDxEDTztYIA8aHqCQydheNFKmaD8yVYeiMgYuI1YRgsRxgGIfvO
         +rz8i/tbXwL7xau/0TIl6db22dWXvxL3fDNeieYzfT4U8p6SRPyEpMVwIs+rw2tGe49n
         YWCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lt9rlzdCFp0+loI1epioC33c5UveEB6Rw3rYDFSS3OY=;
        b=PHKJ7FAxBDT2DgCsJVdabXJJnNlo167YUJpNjV4hniI3tLJatienH3ZTdEfrLBuvoB
         QjGdoIaPRY3tJCQobwJ+i20OmbKVrGuaYyRsKplX36x/tnMu/gkQ2knCjm2KTm6buQCe
         Md/bvHJj8Bt/uf98PdyRVGXo4iy341oS3s2Ybb5HcUgXvAmc/23bmI2mIKVZL81OAL2R
         QDBIhEVYjX37iiTIMkb6U+Ta1P07e8oqLXwPxoNWXPHzQQuHjgpoZthWZ6B27mLUcfaG
         gDzxk/os0bFFg/ENmeIAPmR4E/pSuwU/GDZ4PCJLHS2CxRAW0YBmAMzneRAS8DDT6Fw7
         NlPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjglx+ZY5sLHmnEhIn0WQOoz3QnySVUQNk9VEC4Fm+p2uazAOG
	77XAu8ZGiEBTsBxnO/D5y0k=
X-Google-Smtp-Source: APXvYqz0mKf6IxPF1Av3Ry4JrYNIqS9upDoSSq1a6sCxHr5xZK2CSBXGXvbkWII7l+JeWO02uGPncw==
X-Received: by 2002:a50:9fce:: with SMTP id c72mr26810754edf.166.1568058916629;
        Mon, 09 Sep 2019 12:55:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:265a:: with SMTP id i26ls3139097ejc.16.gmail; Mon,
 09 Sep 2019 12:55:16 -0700 (PDT)
X-Received: by 2002:a17:906:a3d5:: with SMTP id ca21mr21471564ejb.258.1568058916214;
        Mon, 09 Sep 2019 12:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568058916; cv=none;
        d=google.com; s=arc-20160816;
        b=idP0DZ0ImspoNu+Zydsz7hb2Zsre5mK9woMVa2pnh+BPSkCrNfx57fG+slXzSTSCtd
         fxRapkox3iRPFO2DgMTRoE/2xUITDPLihwTIRLoFhvPtXTSSCVt51LD3sNuPpK3OYFnu
         m5zkt4m4T1NzfNlaY/PgrE57tRhM5dmJkoDANy1rXho6QqzJZc4oYpGj94mv3lv4yspw
         PeTOKroSTfF6BlEw8pXqBrjOI5Cmz2WTN09MpKSoSet/2/7LJMS2bpQHnmnGl7khcp7h
         J+2v8/f3zl/eVzMD0ifAVAFepWAX63RkexvjD/yKjWuPpu9eDyhCTk63qvLVn6tDMGjC
         GcLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=H3sorivf6lk7YjlLM7J3YYB/Mg3GHZvlq9G4ZRPM0+w=;
        b=hIWecv6jqRT3WvZffWtCU7SbTvq34Pc1uOTxlhL4EIEZBScqXurGLic2R4BjtiEUuA
         lGdJqocTmSZmm1mJEsKDtxNy9GIz5M70aWEw2n13iTDHeC9WG04mLoUsaB0hWYF+0QSJ
         v/wXnsm38Vb3apTqgRDy707a2ONlxIGUGM99KlSvinyliniUi/locqborLWGgFF8UgIr
         tG5Xs3lgezXV2tCj48canl0qzP88O9/WR9iVuaOaoAGbSg90LtJve67rvte/YnPT+6pN
         //mHkd5FthP3ElJmRbUNTAJPGifhT4ErGAB4HLkiY3aAX7M89EyNR6Q8OUNl/fYS5iJ5
         CUow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jsAXB23r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id ch16si1099193ejb.1.2019.09.09.12.55.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 12:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id h7so14559718wrw.8
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 12:55:16 -0700 (PDT)
X-Received: by 2002:a05:6000:108e:: with SMTP id y14mr20497197wrw.344.1568058915780;
        Mon, 09 Sep 2019 12:55:15 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q14sm33391410wrc.77.2019.09.09.12.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2019 12:55:15 -0700 (PDT)
Date: Mon, 9 Sep 2019 12:55:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Saeed Mahameed <saeedm@mellanox.com>, Leon Romanovsky <leon@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Alex Vesker <valex@mellanox.com>,
	Erez Shitrit <erezsh@mellanox.com>, Mark Bloch <markb@mellanox.com>,
	netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next 1/2] mlx5: steering: use correct enum type
Message-ID: <20190909195513.GA94662@archlinux-threadripper>
References: <20190909195024.3268499-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190909195024.3268499-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jsAXB23r;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Sep 09, 2019 at 09:50:08PM +0200, Arnd Bergmann wrote:
> The newly added code triggers a harmless warning with
> clang:
> 
> drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1080:9: error: implicit conversion from enumeration type 'enum mlx5_reformat_ctx_type' to different enumeration type 'enum mlx5dr_action_type' [-Werror,-Wenum-conversion]
>                         rt = MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL;
>                            ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1084:51: error: implicit conversion from enumeration type 'enum mlx5dr_action_type' to different enumeration type 'enum mlx5_reformat_ctx_type' [-Werror,-Wenum-conversion]
>                 ret = mlx5dr_cmd_create_reformat_ctx(dmn->mdev, rt, data_sz, data,
>                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~            ^~
> 
> Change it to use mlx5_reformat_ctx_type instead of mlx5dr_action_type.
> 
> Fixes: 9db810ed2d37 ("net/mlx5: DR, Expose steering action functionality")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I sent the same fix a couple of days ago:

https://lore.kernel.org/netdev/20190905014733.17564-1-natechancellor@gmail.com/

I don't care which patch goes in since they are the same thing so:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909195513.GA94662%40archlinux-threadripper.
