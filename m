Return-Path: <clang-built-linux+bncBC25XUMBOQIJJL7H6UCRUBDGQDSM2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4591CE889
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 00:54:13 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id z2sf10131461pfz.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 15:54:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589237652; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXIQcSPF4aViE5+w5VRCqx3mkmitgT5uta9v3aafkHRjbcHDvkof/KAvXJRcL/aV3Q
         5VeZJZTy49/pB87Okp5DnVF0KTHQRY0ilHUgAVNIF0WkcTLDN2VCROZpjhgSVPTjBOZ3
         NREZNGwn9IgOSIe/AOlwOAfgCfHhEc3XZj45UMTDNpBWYlCMpVTta7sd2UtC3Bt0JNWc
         DZUknl0/y4q71WYCM7s9jjv60caCfiSmC0se6HznG5XkWf57+yOgPHaDH5vMmbt6fTFm
         4PSsMtuXfgg8NKJohqYQtwqhFPb9IXVHI/XX1QSTcM/a4lcdiQcw6wrrp1t6LJkAHCGg
         pDlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YNrqYottwFoKhLgLi24QrbEhtp1D1ud9JG9x3kh3ONU=;
        b=NbZ/lyrnUc0G9DjzbHnmue1FCC6hDzlR+HGzOmCqdTRqJdSn3vdFNLU/XEAjMyMy//
         4jlBKLBMpd30qkzfdtn6ASAvFy8SjDMg6vYYdAVgOATgK/inZzpSE6aLbUDP0f3rWQWI
         WhcAVS/VDppTG14ZZY6Ek/d7llpDxdkV/WDVFhiP4/96jhuT/i/AwRNZmxVCMJDFL1Sv
         KxfmoRg3fR3Hz6xdAmsP28fXCO7i6fIcN9Vxq3fxpEKWEcTvFegNH8Z2sQrH5JhN94c0
         KxjQSdiaAN3yfAKFmp2925sClGK/lGdfA15PX7wO7+Trmiom8KE/EZ8LFwjG9sKgYEQ1
         a7cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uftKWEI+;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YNrqYottwFoKhLgLi24QrbEhtp1D1ud9JG9x3kh3ONU=;
        b=UORrBC50AziutkXw/X3PusXP6STtN/b0H/TLOErvqt2YBHMOZZ7GstTrwEobGORvEw
         2ypTZn/XnMEwroRF5ZFIvhRfPMTXJkugBqYTamyNp+QJN9MpwkQ91Gv9ZK2RW/sJre7C
         yJhZNW9qdfEeR1Ec6a1oBv/0peu+O+sjJ/lY9YoWu/r82rw2LGboyEb9yWFvoBYK0Z1Z
         SUGJVNgD3E2S/zNOz27h4ynkXgrkBRnaZz2Yr2k2XneL2VXFKcEUMHLGkpvzF/liHg3E
         TbMjNdvF5LDvifszqlcIdG5ObGlwpBES20IuRGO1/nv/oUOcLeD1MzpHkVYw6LDVDiAM
         gpyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YNrqYottwFoKhLgLi24QrbEhtp1D1ud9JG9x3kh3ONU=;
        b=e222OE0AvZUGViAtC6GxUuuRdZdhWigHUUi9E0Ps3QznQjTDvZ/20HA7hD0/poGwja
         /gbAe4fRZOh/jaiXLCDf161uja0NykZESKQxufmI0RmmJ7Bv9YRwbjqNy7oXl55QAs5W
         sBPjDr1Em/hq5gUmC1zIXMsb10xrXfk+VCb9NJp8rPUJsCBz01I/rQoi8SbrPoprVReq
         7kvV9oxG7/02yHZ5wHAq5wxNlKg+XuAjWH9pLfjjily/V54sGdYS/7kJRifJ1lzYEJf9
         KQgYjrVa+6LxsPfLIUuttByb5IkrvSHnSNEZAWxn4Mrf6/InfDTZ3ZSZ3+lSsq/9JfrR
         U7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YNrqYottwFoKhLgLi24QrbEhtp1D1ud9JG9x3kh3ONU=;
        b=qA3OFCoBT8/b7YWcakFqmakuJVFX/UhBVj3LocAsA8iD+P6eBOmajcwtPnHFaPvMW2
         ziixywuKR07vn247KgUu/tVsz9hePl1ALWJkRMp7rLZx5tEE9Gje27RIu+rdUkShyyW+
         fhR6v0G8INAW3DVV6ZzVFAiPZrW/BLzIuDd1DJ2V7IZhiLIZhmYJxDJudkck7HB3rNqd
         JpFIMr+8cgsvI3/5/YnMLNRP/b5Omha1PjsJAvHEROIIMaGRyTvnYyM9mdWby2BTqP9i
         mIt4qPtPw/dHP+ztxYmw5zeTXqmaLDCG+oMEyfztKcG6QQCCHbWdYXY6EktWv3Nnzo9e
         sGCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530n5em2CKi1/bs2JnU5q50CbpzQU22StSjPkXYS69Z13XqYdPjp
	RFTfMEXpwTVsHAOFla2PW0g=
X-Google-Smtp-Source: ABdhPJyfwharJGtWbMjP/fyC+ypHtHGbioLBL88BfxzU8g2mOMxX9fdx2Oji+wPz5Jcvs4VOZhcpug==
X-Received: by 2002:a17:90a:6ba1:: with SMTP id w30mr731895pjj.4.1589237652152;
        Mon, 11 May 2020 15:54:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:c31a:: with SMTP id v26ls317150pfg.2.gmail; Mon, 11 May
 2020 15:54:11 -0700 (PDT)
X-Received: by 2002:aa7:9852:: with SMTP id n18mr7139490pfq.276.1589237651746;
        Mon, 11 May 2020 15:54:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589237651; cv=none;
        d=google.com; s=arc-20160816;
        b=FOSMfu0NCV7xPlc7tiQNZBsm16iIQ4sd8/jTh4uprXdtoiCEK4fJqYZKaPKwxp6430
         9UljlRziSKP8kmQEhueJIjgp7jZ1nfcLDXY0a4VLVGHWNczXYlUpF4vBZUrIlm+e1CSj
         0QFjzO4NfpWrve7xh9/WsMI3W67vbd++IGivDLLmUNdrvFI9GXhFWLmSPHfX1CYLbwWd
         slFGE/EG3H44vZNSunkBKt83DPgfyYHZBSNhn6iDdH1DEjEPlXM5XQh3DvZcXgsmqrW6
         IavJhinCbPvNt7fjBHGv7cj/FZSbybwKUW569dj1669ZFqzNXCkKylXLkJgS/ZJwGaPr
         orpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GPqPt+LvpyhigCOhSWJiaFTaWdPgFw1mAm/F4h69auc=;
        b=AzV7QkKhF4G2vmjkCGhk88tTAhv5mVINv2CM50YJb1RZkFefHPeNEd/js4y3iizynd
         r48jbHDZH0NrUanQIgh1a/fMhBa332+tTj1j+97F47ryty4qthF10yTl2PIFPK5W1KCB
         wE58cua6IDHMbC3xHCa21RmnDIwfsody2rgnKBzclrA+Av6fv0UAk1R8OAALaH1ok1oC
         dFZDUMpTJUfdXd2mKoB4g+Cp3xY78ucl+P3R32L92SkZTvxGtAfvHxXFwuNCo5DNzZtg
         pU3vVe8NlQ4VEk11jbWvbr/xjFNnAEVy2OKWxfDCE2+20f78LBHvzneP5yaa36MlR0+s
         Roug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uftKWEI+;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id k13si853006pfd.0.2020.05.11.15.54.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 15:54:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id e8so2466041ilm.7
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 15:54:11 -0700 (PDT)
X-Received: by 2002:a92:bf06:: with SMTP id z6mr17283577ilh.191.1589237651050;
 Mon, 11 May 2020 15:54:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
 <CAMzpN2iDottAY3p=GS0A_7XX7bpmWsmSOEcztMXNEEvcwHirjg@mail.gmail.com>
 <CAKwvOdnxV_KwC-q73e3basJvo4-9FCGeMUOrZLj5xyt6Yyeh2A@mail.gmail.com> <CAMzpN2gTEwGh0U+L3_R6pC8Qmv1iY7bRTiTEXD86mF3u9Nnkqg@mail.gmail.com>
In-Reply-To: <CAMzpN2gTEwGh0U+L3_R6pC8Qmv1iY7bRTiTEXD86mF3u9Nnkqg@mail.gmail.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Mon, 11 May 2020 18:54:00 -0400
Message-ID: <CAMzpN2jcCM4m_HnJPc6kpVhnf588w6bPxYM_bCEd3OgbnvBvTg@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uftKWEI+;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::143 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 11, 2020 at 3:34 PM Brian Gerst <brgerst@gmail.com> wrote:
>
> On Mon, May 11, 2020 at 2:46 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, May 11, 2020 at 11:09 AM Brian Gerst <brgerst@gmail.com> wrote:
> > > This looks like the same issue that we just discussed for bitops.h.
> > > Add the "b" operand size modifier to force it to use the 8-bit
> > > register names (and probably also needs the "w" modifier in the 16-bit
> > > case).
> >
> > While it does feel familiar, it is slightly different.
> > https://godbolt.org/z/Rme4Zg
> > That case was both compilers validating the inline asm, yet generating
> > assembly that the assembler would choke on.  This case is validation
> > in the front end failing.
>
> > long long ret;
> > switch (sizeof(ret)) {
> > case 1:
> >         asm ("movb $5, %0" : "=q" (ret));
> >         break;
> > case 8:;
> > }
>
> So if the issue here is that the output variable type is long long,
> what code is using a 64-bit percpu variable on a 32-bit kernel?  Can
> you give a specific file that fails to build with Clang?  If Clang is
> choking on it it may be silently miscompiling on GCC.

On further investigation, 64-bit percpu operations fall back to the
generic code on x86-32, so there is no problem with miscompiling here.

On a side note from looking at the preprocessed output of the percpu
macros: they generate a ton of extra dead code because the core macros
also have a switch on data size.  I will take a stab at cleaning that
up.

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2jcCM4m_HnJPc6kpVhnf588w6bPxYM_bCEd3OgbnvBvTg%40mail.gmail.com.
