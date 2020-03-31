Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4NSR32AKGQECIDNJNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 260EE199EE7
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 21:26:43 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id 77sf9168474uaj.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 12:26:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585682802; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPUS2LdRa2PfteBCovb1kN4/n+ZAq/o6EK1gr2eShh0H2RLF+bll/tMuMtxYrZtOzW
         o53BQpyJuVquDWYPuMzV5mpb5LozXLyqJkVeFjRZujsAqXYnoj6QkyrvVaSjPTus5fye
         Fs7d+ptaQyCGtxXeT7c+ot1Hmxj8jVOLp6ETTOYaTSe1LVMZWG7CDirmOy9wi4K0Oy/b
         +at2fudtNaIo2DjX5QwTIHowf1hf3BqNLH+VhecCOg4KHVCGp5SGLIgG994z2UXJPvWG
         P1dkKt+Ow+RB41sFSLsbJWfKVJLn1kFUBAYgTrs77VdzWufVcnxiMJvhQ6u/Mq7k6+wI
         a4jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ls+Ikb4p311z/mPzyRaSfDQtjxNLC+lbFxhBRfsMWqA=;
        b=o53VMIlvsHqRGgPBQShEMtwharcgnSk5gSj6rNYmLfYl5gME6M7HGAyzHoCaUDbX8o
         ru12sACscrtaMQ//fFhEt3GtSkkiBE5+ZCUOAWbJlIitMbsasr+8lLuLn+/PE7DHyKG5
         nwTPjp7B5LWpJwiwirsxh+WLddMYZib+QE8EA3gafGOrHQp5quEvf3nbGPCBxRDwz4Ok
         CuUZ9M3WA8EmDMKFteUsn8aXghK+iPV0tYh+0J1lRGJzMuLwmXacVjT6um9xzuBfvOtC
         Atd+qUByW1s2rd2qdS8nNVR/21zmTqk8JYlyn5P0rNXrAODaORIhFtaucEz+G9gJhw3Y
         CJTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ELhoeap4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ls+Ikb4p311z/mPzyRaSfDQtjxNLC+lbFxhBRfsMWqA=;
        b=R3Yfc/+d63K0jhANiaNfqDsBvy+t1azpMD97moLRawa4I7g5CwJ/Z8oOeRUCiKXMjM
         YgLMRjFynUdHYk3u1fYiBHVZ69LN2x1fNfFK0cAhd7aWPX6bfm3zfPoNL4Dj+xG3yQPt
         DPM7XZptrQaAbeNAG69zAKfr5sRLGlC/Jyvz7Rt2Gn/Rq8zn88jMNBrTq6fS8wEGJroh
         Vs2FIw2pvndFW+dgM6V85qHfWu612ezDGNlQqKS5Wrg0NYYwA49FIZpPVaHQgh4rBn1m
         nc5nX7lj2bnbpbU37fuvVnspIleh8mD+0IU2Nqe+QTqATeKguS/2UUTYNxC3Vilakbhy
         i1sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ls+Ikb4p311z/mPzyRaSfDQtjxNLC+lbFxhBRfsMWqA=;
        b=fIaKlZdGtIV/VoxsPff/RAjB9M8IlH6IUXSe2uzGIDI8wq/WDifYnITf6kCd4MDFH9
         k3V/4IS3nQi2nU3/44h20lM6L0xRlQjdtI3MfhFcpsFN9MvpovNcGY+qkayt0R6+RH/e
         ++SNGqEK8wDNaJXUoqLWjISCiIlCGCRTJ5+DYI8VWNXrJKdRn3GufmhHxZPHZILl/wdT
         aDMTWJdYIUls6/03oHuX188DkdelZL5hxdc4m8ApaOB4gufccS7LaSTZKcXY29/Qb+gI
         hx/UJj8F8dDdCbaMkUPXyp7ytT8ev602RYu2q8qH4taGGkwKGfO2wYgV9o9w2w66Bc8X
         +Q2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ls+Ikb4p311z/mPzyRaSfDQtjxNLC+lbFxhBRfsMWqA=;
        b=rDXu1PHHqvEuj+fowbx3fuEeS4t5e+yiN5TkJZXriM60eyPcjEbO4X/xev7xCoyHZ+
         Fw8ACc6/0C2QNtsMN1CUQZAsKmS6B9FFMEud7cDdtFLVTp8zJ+6b3Wojpj0oIhf8Fnyp
         qqhpGZ6TTZNLWBZ6EYoX+wKBINecf7J66oJBa7Lvz9vxTkO8355/oOxR24sYItXb7MKN
         CoKeLIEFP0F1m9cy1TIvxzlTYYv79rQRLxbYl1kzN/5PWJpHUtPBLF/hMPhgg4Hx+ZOp
         XzMrgXa8TlXC6d+pwGeRYRwpwmZ2SVA+ta+igRUNlhHiNP4aBIYGFdVDoZywhPoaLR38
         9I/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZgAFpEKOA7nPBZdjGgxwFHPiF2phP4E/NU2yLyo45274AaP0lw
	iQ1WPVtbQlAMojjRZxP6kaQ=
X-Google-Smtp-Source: APiQypJElxrx5tRJV+zlFKJr8ktlV30xkHdn/vX2UZMta1inx/V0h7k63SroBgCZTpdGfR7PVop8fg==
X-Received: by 2002:a67:a06:: with SMTP id 6mr13122421vsk.22.1585682801734;
        Tue, 31 Mar 2020 12:26:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:8e:: with SMTP id t14ls3162411vsp.5.gmail; Tue, 31
 Mar 2020 12:26:41 -0700 (PDT)
X-Received: by 2002:a67:ff05:: with SMTP id v5mr7474275vsp.62.1585682801369;
        Tue, 31 Mar 2020 12:26:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585682801; cv=none;
        d=google.com; s=arc-20160816;
        b=Xh8NqZKdegh7d2T4vrdAEsb6G2KbFQjWpJbf/01tp1oVESw8RagGoqKLM20Lab8pv2
         wfDuN2x6WcZjrlFGEGFOoFzjK6DEv0plpf7tKx1LMbOmNS+K/n1C2TrW39S3XcJWrCII
         ++H35DCE5f5xldhEdG+Eg4Ookb3U89PwnhsPSMMEse4Dlpt33o6sOy/lnHkpG7wxhtgB
         m8FuWojiCKwxfqDfKx+lRB6hReUkGtW9B61Su/YA3S4YbqGxIBf5IoZVcdNvJ/lO31cQ
         sXVrQnOLyDOf/qlCHsgL3cMzuB6jYl9PKgEPPugODlzkJoeKpk8qSZM0bUUdaoyUrPJ8
         DG5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=p2qtUegF86XJQD0U9mJ6PbruzGtXxYRXcPJJraWyFNo=;
        b=U4WPSGbqihmwWoGn+XTGYszc3rkIDyQdiol9I9eA8ndmhKComj3159IHVRbQgexADF
         I1KThRoqXWnzZGwXAIUWQSVTr5pX4IeDcJSDV2x0skVJ2X4wPtrikgVNT+A/h0BnGEYV
         xKJQW2iLbETxVsf07J85/zZ1bN47szx9oOW8Ae/2Sk90W2rlGOit+4BWSNjXj0DW60Ih
         oRYzTJxh/WLm05Q+Wn3PqyUNaPQGzBRd+hwIMgiVMmuzzvfjGdNGBVlA5hfpbe4L1pP0
         OArkcjdkm9ZZjIcInKO/IHe8/QrAAE5dUROKyzd+CJ85Bpzpd7ODq5L8xp363es2qe4Z
         CewA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ELhoeap4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 205si1072700vkw.2.2020.03.31.12.26.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 12:26:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id v2so18738059oto.2
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 12:26:41 -0700 (PDT)
X-Received: by 2002:a9d:a6b:: with SMTP id 98mr13525220otg.21.1585682800831;
        Tue, 31 Mar 2020 12:26:40 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 90sm5487928otc.29.2020.03.31.12.26.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 31 Mar 2020 12:26:39 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:26:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH v2] kbuild: Enable -Wtautological-compare
Message-ID: <20200331192637.GA54270@ubuntu-m2-xlarge-x86>
References: <20200326194155.29107-1-natechancellor@gmail.com>
 <CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg@mail.gmail.com>
 <20200331101122.GA6292@ubuntu-m2-xlarge-x86>
 <CAKwvOdkkpnkLwtNctSnebXTwumfprEQtLiuM5_4e-UBFTYBUxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkkpnkLwtNctSnebXTwumfprEQtLiuM5_4e-UBFTYBUxg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ELhoeap4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Mar 31, 2020 at 09:02:19AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Tue, Mar 31, 2020 at 3:11 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > Just a follow up, those two patches have been picked up and should be in
> > this coming release:
> >
> > https://git.kernel.org/balbi/usb/c/58582220d2d34228e5a1e1585e41b735713988bb
> > https://git.kernel.org/rostedt/linux-trace/c/bf2cbe044da275021b2de5917240411a19e5c50d
> >
> > As of next-20200331, with the former applied (because it is not there
> > yet) along with this patch, I see no warnings on arm, arm64, x86_64
> > all{mod,yes}config.
> 
> kbuild test robot is testing more arch's than that with Clang so it
> may report if it finds more instances of that warning in those.
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

I'll keep an eye out. Hopefully not too many more are lurking but we
have definitely caught some bad behavior with this warning already so
getting it turned on so that all CI systems can benefit from it is
important.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200331192637.GA54270%40ubuntu-m2-xlarge-x86.
