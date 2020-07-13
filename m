Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXUJWL4AKGQEL57QKHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3480321DAFA
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 17:59:27 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id r17sf17598668ybj.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 08:59:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594655966; cv=pass;
        d=google.com; s=arc-20160816;
        b=OxDJ6irMhQTm8B2hppjnA0H9kt5bfcwWsq6K/SwoUsFGjP0D0+uWPd8F54xw2nJM0V
         tMtJl9uDoTNDYr6nRo8R8tXNZ4QyxyWO/QIwlb73UGpjpZcl5wetYAEoOyij7tTCNJVy
         xkiHdYciLU0y4shTmRZ5qtNro+ROFxisPBog5f3WZxgcuSkLgH7eFnusci7Wz0rJx9nw
         1yReVntVH2a74fMmyua7M36XoXlFh6d0sqUTc1cF+UizmA6hcNQlFnoagvX1G6aciusv
         St4/JwhBlB5/x7lEGmX7/8quxhOstMr+IN1pw2IHc0m5j2DgErMC7/QwtvjBpNN1v96Z
         iYnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=u1sL8WCXjkgKKq1DhToDfaQ80/zHXjrsF14TRTgVK1o=;
        b=pZP8//w/+fY+KWg1vG6Wl/bwPs45pikZmAoXPltcrJ0tkg6XmlfaaF7JSY5P09N395
         Jrr51nZU+Sj0nTpUdmLcg1oA1eHmJMJNDNG6D2U99j9xWkY1U5ORZuG0QCodde48QXDE
         pr28Zn9/b+ylxV5vnyjk7ccZkgTZi1gnEyhpmOBvIzfYmiFbTuh7PDHV24PTY7wgu2Gp
         GQIIvYA/y2RkkamDR6X4i1H6qeHM7hLMCh2N1SiaoxIpXWxEmpbXJfTzBee30LC38E2s
         CaXvpSZvczceMlVPqQyRU+QnyWgk9Ly+GhBxxy7uWMYHAhyax8jb0epMLqnQTpdys0qA
         sSmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mskIuOFQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u1sL8WCXjkgKKq1DhToDfaQ80/zHXjrsF14TRTgVK1o=;
        b=tna0+aQZFiDPjYu8wsJlBHdYjBCr+eXi4yYsxc+sDf9M7TV7DC6dOOyc+u+lq/Pti1
         x4gpSyzRmFffDWi9J6I+i/2vhGgt/ETjPWR1bLmpEOGQc5nWUMUqHPu7yeAZM0ewhy/U
         W2VOG3HG8kRPrk/y2yr35H4bTV8uLn6oeIuB+qflMv002Em2x/2eqXKxKuI4IBWZ2FjB
         z/cMUsD7luKqlqP46A2JCQ0LFY0EgO/wFAnQsxK5i06Myqx80ViD8ispF0b3KP/54foB
         /3E3mQP0wRGUQiPG+cMP7zJMf5+hfOrnP4KKFWpeiOyhh3v/76D85YhhilMe4I83Tp8E
         ervA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1sL8WCXjkgKKq1DhToDfaQ80/zHXjrsF14TRTgVK1o=;
        b=MlU7uobAnJrf0jkP0SKujKd6ZCb5Gyh3U0WZ/PtFMJPE9vr7CgtNzXFStGAGZvLl/y
         IDE4iAvWO8AuLLtyv9mIijmHuVJSRebiMNPyRtbaKbChn+sXYZJ5NTlH1PbgdRRJkEjY
         LSPCqAu+jkXd+nRIXb1LngvKlSzc698KPwpHY78tgXrfOVZ78XB2yCiqy8m2GSofAPnb
         oHlJR0eyT1tzr+VWHXT4aCG3QkGiiNJF7PwymNpuM43Zbq/yZtfvEr//pmxgB0+38/wK
         CyHxJHM4lJ33F14H27s4mxCqZcrmGdCCYsl0vHTKDPEhdYKZCdEvVdvqCyWMeZkXRPCj
         /FLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1sL8WCXjkgKKq1DhToDfaQ80/zHXjrsF14TRTgVK1o=;
        b=fwhsGLw9Zf++6lbqXQqbc2aUiqRqgmoqHgsORUw5XG912Ib5oL63HZP6DUZvMW8Qxr
         WW22EppVQMFcvmPrbc1KB7Z25IHjw8JC286Fud5Oob6RaGs9iPx7Y+jNQVyi9yLiv2z5
         X4GKsxsftuY5kmlPxTEOtmBOhpg2JcDVsb8Vv+PAqpeQKQ2LO+DGlNFXHfodfuA1qsWp
         qNL/nxHTzAHfyF3mPYrpZIJnrWzJn+dYQwXXHPIJMesktifGNVbNGtz4g1JoRuOTT26K
         1b4fs52oBj3jmJdnUibK5/JKijxO3Vj35qTCP3m4Vzif+4bQOB6DsMg5NgP4ejEYShgW
         ydMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532e+qU12xZgzKvm5Xtq7H3FTEKNnqC1xL4uiU3ZDY/GzYeVB0mh
	6SqYi9afeOim1xHD6tf4g5k=
X-Google-Smtp-Source: ABdhPJwM14bwDzQVWQ0Nqada/raWo1xXdJS6cwbQJXKOVxkXTu8VAoFFWu1Ym8ewvRCNlhEaTpXOqw==
X-Received: by 2002:a25:4d8a:: with SMTP id a132mr982820ybb.470.1594655966130;
        Mon, 13 Jul 2020 08:59:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b111:: with SMTP id g17ls792621ybj.11.gmail; Mon, 13 Jul
 2020 08:59:25 -0700 (PDT)
X-Received: by 2002:a25:c74d:: with SMTP id w74mr1030743ybe.447.1594655965734;
        Mon, 13 Jul 2020 08:59:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594655965; cv=none;
        d=google.com; s=arc-20160816;
        b=jd2h/FwY3srTWlo+H4In+JBaQhumZFMJG81taNsQZYmo45Fv4oOBqxBWZYYqbl77xc
         uYhVdkdJ30+N62DBn0eD2+rm7c/pgXGU03mtUydE4vTFc5Xn7YxLvwzlbipNcL/nLuSF
         nlOlU5TAkeNV2vi0JDKKeQopakuOCInu47TejoPAKDue6aJod5hjs5OWSJNe+iiEiQme
         Kp9kaGuIDSgvCl/ofnoo+fSRcSukiUedqYeYhcM8Jw/ijaVenFl/XMe5/mGcCZPdAtrg
         BPa9CH5GcvwIMvqVrS/86Xb/zEa4ahDChGy3xjfr28D9gdRfLzNCeDZjnjVyZAG1cUqw
         dyqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2BldiAm+TT/Jt2NQrO6UjTqCxOKkSedXNeqSLddvbVs=;
        b=w51RMHsbrURwuxHzdL7MnSrtjotEv7n8RKLVwN95bc2EZDRgR2pG3VVmLQVy6EuAI5
         +pZ39vNTF62QcUgOEx35bRF19zfV7cZGUC9uBaOhrvI+BtdAhFZNlF3LcZzFOB1oOcWp
         w7HD4sWAM9LsuLNDK3drGUqNeI5NUGKctxwbo4qfTVdDBktiWJf6q5RMhRrPD1YaaU1V
         Ui0Ty1/aFrThs0W15Fa+uSLKRgWAjwTyIXxGL9hkalj88Ie5ug5J/5fIhH9vn/g5eKgm
         F4hHg/55qe+ftShXPMgH5AsS0bZx3j9QoizM3tYfp8N9T1ZwLeggNQOLYO0jU+fYmn/d
         nJ1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mskIuOFQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id l126si929729ybf.4.2020.07.13.08.59.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 08:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id h16so11563529ilj.11
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 08:59:25 -0700 (PDT)
X-Received: by 2002:a92:dc09:: with SMTP id t9mr382735iln.226.1594655965186;
 Mon, 13 Jul 2020 08:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200712231050.5147-1-sedat.dilek@gmail.com> <20200713111330.kpppbjbjwwij2rgq@liuwe-devbox-debian-v2>
In-Reply-To: <20200713111330.kpppbjbjwwij2rgq@liuwe-devbox-debian-v2>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 13 Jul 2020 17:59:13 +0200
Message-ID: <CA+icZUUAyqgJR-qQFMvFAK-SJmUaxdH9EL9VXR0Me+hwJW5qaQ@mail.gmail.com>
Subject: Re: [PATCH] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
To: Wei Liu <wei.liu@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jian Cai <caij2003@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mskIuOFQ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Mon, Jul 13, 2020 at 1:13 PM Wei Liu <wei.liu@kernel.org> wrote:
>
> On Mon, Jul 13, 2020 at 01:10:50AM +0200, Sedat Dilek wrote:
> > When using Clang's Integrated Assembler (LLVM_IAS=1) we fell over
> > ClangBuiltLinux (CBL) issue #1043 where Jian Cai provided a fix.
> >
> > With Jian's fix applied another issue raised up when CONFIG_HYPERV=m.
> >
> > It turned out that the conversion of vectors to IDTENTRY_SYSVEC in
> > case of CONFIG_HYPERV was incomplete and fails with a build error:
> >
> > <instantiation>:9:6: error: expected absolute expression
> >  .if HYPERVISOR_REENLIGHTENMENT_VECTOR == 3
> >      ^
> > <instantiation>:1:1: note: while in macro instantiation
> > idtentry HYPERVISOR_REENLIGHTENMENT_VECTOR asm_sysvec_hyperv_reenlightenment sysvec_hyperv_reenlightenment has_error_code=0
> > ^
> > ./arch/x86/include/asm/idtentry.h:627:1: note: while in macro instantiation
> > idtentry_sysvec HYPERVISOR_REENLIGHTENMENT_VECTOR sysvec_hyperv_reenlightenment;
> > ^
> > <instantiation>:9:6: error: expected absolute expression
> >  .if HYPERVISOR_STIMER0_VECTOR == 3
> >      ^
> > <instantiation>:1:1: note: while in macro instantiation
> > idtentry HYPERVISOR_STIMER0_VECTOR asm_sysvec_hyperv_stimer0 sysvec_hyperv_stimer0 has_error_code=0
> > ^
> > ./arch/x86/include/asm/idtentry.h:628:1: note: while in macro instantiation
> > idtentry_sysvec HYPERVISOR_STIMER0_VECTOR sysvec_hyperv_stimer0;
>
> Hmm... Interesting. GCC never complained. Guests are perhaps broken in a
> rather subtle way.
>
> >
> > I and Nathan double-checked the hyperv(isor) vectors:
> >
> > $ rg --no-heading "HYPERVISOR_REENLIGHTENMENT_VECTOR|HYPERVISOR_STIMER0_VECTOR"
> > $ rg --no-heading "HYPERV_REENLIGHTENMENT_VECTOR|HYPERV_STIMER0_VECTOR"
> >
> > Fix these typos in arch/x86/include/asm/idtentry.h:
> >
> > HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
> > HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR
> >
> > For more details see CBL issue #1088.
> >
> > With both fixes applied I was able to build/assemble with a snapshot
> > version of LLVM/Clang from Debian/experimental.
>
> I think the issue found here is independent of the other. This patch
> shouldn't need to wait for the other to land.
>

Yes, this one is - and can land - independently.
Without Jian's fix and CONFIG_HYPERV=m we have not seen the issue.

> >
> > Cc: Jian Cai <caij2003@gmail.com>
> > Cc: clang-built-linux@googlegroups.com
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1088
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > ---
> >  arch/x86/include/asm/idtentry.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> > index 513eb2ccbdbf..a811f6c6cf15 100644
> > --- a/arch/x86/include/asm/idtentry.h
> > +++ b/arch/x86/include/asm/idtentry.h
> > @@ -624,8 +624,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,        sysvec_kvm_posted_intr_nested
> >
> >  #if IS_ENABLED(CONFIG_HYPERV)
> >  DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,  sysvec_hyperv_callback);
> > -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,   sysvec_hyperv_reenlightenment);
> > -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,   sysvec_hyperv_stimer0);
> > +DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR,       sysvec_hyperv_reenlightenment);
> > +DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR,       sysvec_hyperv_stimer0);
>
> Reviewed-by: Wei Liu <wei.liu@kernel.org>
>

Thanks for your review.

- Sedat -

> Thomas, can you pick this up for 5.8? Thanks.
>
> Wei.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUAyqgJR-qQFMvFAK-SJmUaxdH9EL9VXR0Me%2BhwJW5qaQ%40mail.gmail.com.
