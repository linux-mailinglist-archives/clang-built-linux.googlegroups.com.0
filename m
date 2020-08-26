Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG5HTP5AKGQEFYDS7LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A2F2539B6
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 23:26:52 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id q2sf3184300ybo.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 14:26:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598477211; cv=pass;
        d=google.com; s=arc-20160816;
        b=PxR19QuVkyY+V5XAtEOSVbl5Ujk91bEzyEcC8r3nTyBgMJeSkoeGizsOWXSstP7eGm
         CGFIHhlTCyAyiV4KpVYESAVnRsf3v3ehKUsPQzvPdJSM6Er3doqSfjNKCkMIEpdZBINS
         yIsOYU/vfJ5KiQ7LKXZ50CqhY5NPZDpy++br+hkthbsvYYtuOlt/2bj3S4sF9EXpSIaO
         QFV1suAhepTl94TXZB+zfqctiC5RjBH0Dn0KISMNw9LclusL2vqdjKq0h0iNMdqUAus2
         gMHIpkG5LImggKmAp/a3DcUUkZmXlo5R0bNyaM58upmwBC7bHzeg1h2bH23mLfDXMto3
         yKXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=b6W+qQ6ypHWvEqL7Dme8RWK2scO1t7jT8MX+SZIlIns=;
        b=NRqH58JBMDa5z7HPFZh2JSaaeEFyLcSPwu33lCyGgVfNE26VUAaUnkQiKCKMxaCbke
         Kzu2I2k6YHJvaRyfR0WhbarxLBiD/PLl7ZeMuna87ep6MOTIsJUSCN/Eyu2AZAK4EH0x
         de4qB+N18FapTr2oNvhv2DXt67upMEbPLFdCiJv6h9Sl90WufiA/eXB+Vbf1qyd2j4Vz
         VcZdKasHNpy6PWPwi83PvxHllUk9gMLiVlJTF/4h1WscsbpBor3ETH0nU2iJDaxA+Ij/
         pOIBausLJ72KNFhR8xusjW64J3x3Pm3JOYAR6nKE4kfX+QalOaF5bx06De/DOxb7PSwo
         lbeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZxWnP/Or";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b6W+qQ6ypHWvEqL7Dme8RWK2scO1t7jT8MX+SZIlIns=;
        b=Sj/DDRrAe+ku+sPGaCgtCiCCDQANh5BPNnYTy3YTmC8KNt8plRIKMbWFAUIfnWGzAC
         CNhXShfg+B+UaiGidye7TiHr7N0tmXP0ZPxb8Obt5D+a1uA/Zhfplnb1/9myX0Axb1G3
         yd/Bxwwzy/J8yvyCzrUtKldtmrFehw9osCpOrIj6CcI1RgQFdc+8iX38JlO9Ij89TZ1k
         pVUtcizrdgrDLnkfTHHohEsfnpHa+qdPhACIt+kbK9KahjJWG6AgOo6ObedKcDGVUODT
         AXCPba1ogjUT5Xcfn3ZpS2bE6vwMQvFSFijxHzKukOZuOOYXfsk8i2TuwHpqdlTnEAhG
         I0Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b6W+qQ6ypHWvEqL7Dme8RWK2scO1t7jT8MX+SZIlIns=;
        b=gil4rdpKPEAdYYFzCAx44xV7cyEyBWcYX9UKo01IuX95uH0uFdVxfa9PNpvemwabKP
         Plkc94brNMTCL30pLp3rx45ozzC90crUhc+0PSVcLINttbpbaemZeScR1TtGDMyD2NZO
         2GOVFLz6pFQ3kY6P3krUyyn80K2m7BFbenbaOT+vAb+4v0FknFLPHOBIEaBhS6v70E1o
         VmtFmVYhMUHG3eyneUzP51QRh2BhuNwzofbfJODX2aCvyTtL0PCGbrkmQ8OOUSE6bfu+
         /ZiqVE5YppGRJf65LrGWeQEsJCj9jIWmGLvN+wOXqrD1jrpDjEeAwXo02HLnKMBmUQV3
         b4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b6W+qQ6ypHWvEqL7Dme8RWK2scO1t7jT8MX+SZIlIns=;
        b=nY7pb9dMP2zAPpndFd1ejrFSu7GoAKImG/TvGzLq3sBH0enCsrmLwvUJ5+BHMTFEKb
         obVbiiP3RgXKFv22iFP9EXg30QLnheDLxZgFHptCnvvxiPpBzCisXdzye4HIPI5Tjeag
         1SjETfHFxnisrEiPc6NaFg8PkQVPGQ0QN9vWylHtzzNtTxsSQ1/BzXXzNjEIOaAa13wi
         ycVWFCsblf9LeBnH02rj2ItqfPtmSqX+WW3MbB/9XGX9YAWT4/5osT0fmcdO8WJB48wn
         PLGUIAg10ravcMbbkUK/N6kMHxc/lwQyDn8KecCILbyVYhoz98qp7XJIlqGwrC7kjJBR
         SayQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319BgMOG8n0FfKRPPvaT1kgRdh07cUqOTM6RstDKMoP0NoBEmzf
	IMtHtRSI3xsbajsfhEISUyQ=
X-Google-Smtp-Source: ABdhPJzBvstH+UBdAJHEhoeGTxB4u0I21BpFC9j2PlEDBYlpNNx3jOFU1iAW6fwOuZ01IRscnY7ErA==
X-Received: by 2002:a25:ad1b:: with SMTP id y27mr4159456ybi.30.1598477211508;
        Wed, 26 Aug 2020 14:26:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3c3:: with SMTP id 186ls61411ybd.10.gmail; Wed, 26 Aug
 2020 14:26:51 -0700 (PDT)
X-Received: by 2002:a25:1306:: with SMTP id 6mr5446187ybt.178.1598477211152;
        Wed, 26 Aug 2020 14:26:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598477211; cv=none;
        d=google.com; s=arc-20160816;
        b=rjG5YwJ0JgGqhxha4xVwgS74wwXp4Fvfzc09brpn9WZ0pFLPUVlN2BZirDLMpUNQ+W
         WLkVmz30qG3AvhO1w8TaNcnzR/7nZWzBCz9TcfOHwBEG37sVy1hX8zX51VM8I6w+H0CX
         hpTJ5OC6fNADewdYaGBrFYJzJVJuzmJbpBPEEHhnw87p0WNq5D/itksnQAKGbWGJ7xCX
         HHTQCmd4HGaOCZl3eSpR7WPjCux2F+EVMJVCm1GFQI5qhQJWBA8NDi7Fo4AQGsmb+o1b
         rhUNXZ9ZRY8Gzr0i8trLvIdxsagWAO566V3FgNhKpIk/s1LqryNSNir2CSE8wh7WeC9z
         8Rsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vNwGXGQOTygwuMBKfjEu6u4Lq92Mu8LGDRvMGtfK34o=;
        b=kumFslHhqqmnwi7HZ/v/lAtI7QhMxN/JnisTEcxkv1JXqc8JfH1n566HSaUoqDdkD/
         /JNt4awS7ydhWftTwQ5lguFTXdDVrOHCFMp4Xik+IJPP9fMOz/YgBh/WF6X1vTAMS3lA
         3nn8jqF5fsNMTsTDSr+udodbgf0SGcf6B4XgTd+Xu3xM69qJgocCm5fRxGBoFKTxal53
         nHq+B9Il3JymbwRzp4DKL3U0bqo8PvanQvDWPgVyGcnSSwIu+1xG48YHMd6FVnOeqC9o
         i1k8KjZXLUuXEZSCBfp+XzkjzVwTXA2AdBO3KQE4fPs7vPnyjrqyv6WQty4QVxtiRXyn
         iYsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZxWnP/Or";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id p67si11621ybg.2.2020.08.26.14.26.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 14:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id n18so2936989qtw.0
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 14:26:51 -0700 (PDT)
X-Received: by 2002:aed:38c7:: with SMTP id k65mr16710881qte.133.1598477210710;
        Wed, 26 Aug 2020 14:26:50 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 95sm187866qtc.29.2020.08.26.14.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 14:26:50 -0700 (PDT)
Date: Wed, 26 Aug 2020 14:26:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Ingo Molnar <mingo@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
Message-ID: <20200826212648.GA1005132@ubuntu-n2-xlarge-x86>
References: <20200826201420.3414123-1-ndesaulniers@google.com>
 <CANiq72no2qO3BBTU3MhVCp4mDLqzMg7NhWGObHV3wtFCRjaziw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72no2qO3BBTU3MhVCp4mDLqzMg7NhWGObHV3wtFCRjaziw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ZxWnP/Or";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 26, 2020 at 11:17:34PM +0200, Miguel Ojeda wrote:
> On Wed, Aug 26, 2020 at 10:14 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > During Plumbers 2020, we voted to just support the latest release of
> > Clang for now.  Add a compile time check for this.
> 
> Since this effectively enforces a minimum version for Clang, I'd
> also update `Documentation/process/changes.rst` and
> `Documentation/admin-guide/README.rst` to mention this, and perhaps
> use that as a commit title ("implement minimum version for Clang")
> since that is the important change, not the implementation so much!

I was actually going to comment on this separately but you beat me to it
:) this patch probably should have been sent as a series with the
Documentation update to avoid confusion for the reviewers:

https://lore.kernel.org/lkml/20200826191555.3350406-1-ndesaulniers@google.com/

Cheers,
Nathan

> [Actually, I'd remove the particular GCC version from the
> `admin-guide/README.rst` to avoid having the version in 2 places (that
> doc already links to the other one), but that should be another
> patch.]
> 
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> 
> Cheers,
> Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200826212648.GA1005132%40ubuntu-n2-xlarge-x86.
