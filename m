Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUM6TT5AKGQE6ZW3WHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7858E253B90
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 03:41:39 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id 4sf2739393pfd.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 18:41:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598492498; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2LXEr+U5ql5Yu88flPHCpc9ZFEnosWOVSrSEHFMoXXIB2fSeIMFHg0nrr7lb2umt+
         X9pPFQAoXfDrTFoUzY/rppRm1OajMQKXR90Q+f45Vk+lbgvJWAzPL5jzDcb7JV1Azn8A
         JUWu6SRFsrp0225nMQKAYP7dw5CPOsThpUUHGhrsBD4ZSVQ06sJDQoKQ/aOqubWKIekt
         y4afuWwvkv/ZpoQxw0/gqur5/8zNmbhNC1mTQbyMfH3eS57bthV2gZBdU7nyL+EUf3Yy
         6WKpUviCcA4pycc7qfceDzXrgZOYkIwioY65gVgg0/EfeQk2d5AJLE/4SF9LYKiKLZWO
         OItg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=xKKrS+Jrns0D6cAPr6A7z2bRt1Ve0YyBVBwbiAFW86U=;
        b=V49K8d7nwtLFNRiXMyvkHt6XHnwMkysi7Tw0rs1XEB+tdeIJPwZzkrAl89nBZKV2tY
         CAHcewCprq4lLoK1gGD12vyl2bZv61rPpqZU9R/vg1ScY+kd6R4EnwVaKjUGdv3jESQv
         MlfdYTcN2WXOypHtEzeMZjFr5ibwTbge88g0sgCbYBybVynS5asTYykU/rnGyExVCKjs
         Dbc3iTh6Rb69R5U84TbXFvwdST3ZpsOHq3EioGZLpaA0xm39X+Ofwo+CCPLQR8YKurgn
         33eTGarjfwjpz3rb1kuLBX6hJoPtDqopt5pA/x18EM414iY73vZLq6RhfWmL1EQMz9my
         EqCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LALTxSiZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xKKrS+Jrns0D6cAPr6A7z2bRt1Ve0YyBVBwbiAFW86U=;
        b=EU5M3eOSWidTLmBfRLUYzsVpFSRGuZ/JbhqpEZFxCpPCpG8TGgD2NAzc3nP1fVHW0N
         wwVXcsIhNA1YtoetBhLXFQIzDNK2os8hitc3nN11mFvXgRddLOgWpB22g+FUWhTp9mK3
         i5r3Gc4E4na+DPBHeUH2lT/kI3eJyDTWiw+N/PmNmMu1c5YDkQygzOBhBmyFif4Q5/Uo
         xslsMieZhMss8C0+swnyrXttXQjovZTMa8eDmwP0rHph9csvSjjXU+TlkUDfFPlOvEwm
         k6+3uPjBBKmGfvettMP+s2kJkmJdRdpAulhrp1AmyNYE2SibPqTtM4kaIcm16NAnG6NQ
         9lsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xKKrS+Jrns0D6cAPr6A7z2bRt1Ve0YyBVBwbiAFW86U=;
        b=AklssZkwlnopA5lMdRJKaDuJ3ETLitYcgj6G6EK6e3dYD29qD7MGhlX5D9ysHcE7pi
         ZZH8uUB0J2rABgkOw/cEzK+PlJ2fHvsgokxebzAhvB57oHy31u3UBq/f44rVLcvzOv39
         L45ecSVuZd/BcJyIKpHM7+3Zbu03VO0L2XaxXvjuovvCShtbiH0xuUAVMLacAiiPDEKJ
         /nBmd/4BCnysQGW429PUn02bPNmFaN4UEHwLCPxgV6xLN1f3/CU4Tl54H2o5MZbNJnZ9
         nUOAD7AFgM45PaLbBfGaIQwaKqbDM9UXSHlV8bYAbC7vyJfXU9ashKFU3Wwlx8Za8Nyf
         T+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xKKrS+Jrns0D6cAPr6A7z2bRt1Ve0YyBVBwbiAFW86U=;
        b=eNQSFJWEJ28rO+/lr/GToKKmfXXG7I8y3FOyamu7XsJZXw1WKEtTLaGYxNDE1k5Q6z
         2U/IUxVGf40YA8dDN1vdvZH7LihWBfVdTI7MsHre5Oe8sx0KlIiz/jwPESW8pIrMQr6H
         bFBFbvonEYc0kcCUtsbWu8FgW349qGvohAlxskFvBZg8BpLZK+F8PjT4pQmJtUpA4cPc
         W/N2o1CF4dDsMd4yMEp5QlgClY56ZjTJoxN1xMSvP+cI19a2MLsfMRgkpaFo1GxHAznc
         4h1xNUFyqM13Dralx/Kq/vPYsHJpYtd1nCamYH4lqSCzYB5nWIVp0V9r8Xov/AmVCBAS
         V0lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hgKpEApNOJlw5LfKEI78gQ1U58KxiBpBUwAkyGJu20oX00QCN
	m0RCrRkM2klbbXS91KbI01Q=
X-Google-Smtp-Source: ABdhPJwH+owPdhO3AV5x6HZV9EtgoBAyuuq0Eii2AykffYomhYBsseou6ZZ4Ft0s9jcT/znIestwIA==
X-Received: by 2002:a17:902:8bc3:: with SMTP id r3mr9030426plo.238.1598492497860;
        Wed, 26 Aug 2020 18:41:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b12:: with SMTP id b18ls271873pfb.8.gmail; Wed, 26 Aug
 2020 18:41:37 -0700 (PDT)
X-Received: by 2002:a63:4c:: with SMTP id 73mr12895417pga.286.1598492497407;
        Wed, 26 Aug 2020 18:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598492497; cv=none;
        d=google.com; s=arc-20160816;
        b=fT1c08VYRuaFGs9nP6zN5Gc0MJLBRhnLGEyeWllPxEqLgCPsNmcGqkVTxGAZeaHK4T
         /NZ26+lEHCnv0rfdVqTFNoXF7Z9wMX3pe/N5b27UFI0tVCefG7MPjDq3MpIbZfL4WOpS
         RiSmYAEceZxK4tquIAva7M0LojjK5HuDWLVVA7aKvb5vPKgoXIwIo4kAwUBmLBE4oCvv
         tihfKO+Uxgv7qQQYKqUeapqlKRT6YLHGtgLexGtEj4QYBNuAkvPaYsJ2hGY0vjdXSdWO
         pkDTkrRJ/XFYErXx0Jiq2s1w9J9M/NEjwWcci55yPvNPStPgjFY0RJftNKqlwGqepari
         Mpmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VpxVD2x0uYiNXlg2O6B8LwbkjRU1TE9XkZ+m77lN7ho=;
        b=qRd/mWNl0e/D+nPd2aqwESdSY21iWlIfTWstvYAldP1Ia+jshWOP9ayKJ94qd5VZ7f
         tjWcQRs3sEQqCd7DcQ19IdDRIL8MLAHV27sQaFwg6ItZZ4TepOW8ok/cStnF6r4eRLc1
         qYonz0RJnVa9VCsoIWMgo5eZN3FKNhgv7IWIjraFdYCz1jjdk/EqNb+Fp+8iyBmiUMZr
         ASiv2llk2drQXuS1I1bFAcwnl0ky4VXl0vIWJK6d9bM4pYUCucHuHrcgJ3y3ktXQywM7
         TSpI6qCIVs3t9Oa4eH2WPEgg9OKXUahZ1rkWWOrK2FQKl1PEIO5lPlSCFwLQow3laI4S
         a8nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LALTxSiZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id s14si34894pgj.1.2020.08.26.18.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 18:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id t20so3480709qtr.8
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 18:41:37 -0700 (PDT)
X-Received: by 2002:ac8:7741:: with SMTP id g1mr16236048qtu.28.1598492496438;
        Wed, 26 Aug 2020 18:41:36 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id u41sm707558qth.42.2020.08.26.18.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 18:41:35 -0700 (PDT)
Date: Wed, 26 Aug 2020 18:41:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: asb@asbradbury.org, Palmer Dabbelt <palmerdabbelt@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: clang built linux + riscv
Message-ID: <20200827014134.GA4000676@ubuntu-n2-xlarge-x86>
References: <CAKwvOdmRoevX15PoQPjEa_WwDz0c_2qy8Cn_+VKgnK28CDBYQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmRoevX15PoQPjEa_WwDz0c_2qy8Cn_+VKgnK28CDBYQg@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LALTxSiZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 26, 2020 at 01:22:55PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Hi Alex,
> We've been teetering on support for bootable Linux kernels targeting
> RISCV when built with LLVM.  We got it working, then had regressions
> on the kernel side, got it working, had regressions on the LLVM side.
> Is this something you or someone you know can help us maintain and
> test?
> 
> Looks like some missing integrated assembler support:
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/377856754
> 
> Not sure about this one yet:
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/377856741

I cannot reproduce this one locally, even with our Docker image. I do
not know if I am holding it wrong but with both LLVM=1 or the individual
binaries listed in Travis, I cannot reproduce this failure. I
invalidated our ccache on Travis so it would be interesting to see if
that does anything.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827014134.GA4000676%40ubuntu-n2-xlarge-x86.
