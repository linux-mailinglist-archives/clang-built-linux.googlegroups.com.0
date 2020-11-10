Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSGBVP6QKGQEQVAYHXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DFA2ADEB3
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 19:49:45 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id k196sf12580799ybf.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 10:49:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605034184; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ooggm9lruhdqP9zNl/VXjJS31HzvFRNo4EPhQ0kydMOATuDix9V8kWwWzHk7LSA5CD
         WyS4JOKJzq43dobu2YrOG/rUJTOwgIMwGzllW9rR+77+JPBlmWrqNDlEQdmnLdVuqZUM
         Pd5ZGDN9o9ljAoO/Cs/lPGCHtH5DHBqjxfSGL8Q0yFwbNHVSHfnYpizPpYmzUaXE/03i
         uitBNVOrLP01fSdnbkkKGIRAWUzvFQZpkXPwTbAws254mwOKi/kstN28v1j6yK/GLBnm
         61tnTTzypVLkzR8a9mS396cFQslillw1nvbc5aya1/Vibr23OlmALyaw0QAJ8iKZi/uW
         o9JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+juhjthrd3JRyRpfNBmT2ODFRldo3/dqjk19Fv8Mivo=;
        b=NhUcMGyljSZMSVm9wdkGb9FWTI9MMZKaEClSQQCTly2GHVtkh+Vlj7Z5U4nQXvzdps
         +LRoBa86r5NQahcD4c3DdyDC1ypAOJiYESs/OUhdVCpI0uK4FHB4cjHfI6j9YsLfc3YR
         LJS4anW3ALoayixuiawA9WI6uGG+XPqUw2Ofw6GaSeq9zgX8xsjas50vYAYqfMtF26RW
         XvukkNN00MPGR0cLWBYElGtYno2GrUFlKRBKM/3HOqq6LkYJ8nJBNVEi0HSDpeY4rF31
         923CHsy5A6TqmJntJuaEljh45iTbI2mYkKI9fE1Dg/zwOREYRoqhjpxwv5Cfyy+bo86Y
         U1Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TCCBd/9G";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+juhjthrd3JRyRpfNBmT2ODFRldo3/dqjk19Fv8Mivo=;
        b=Rr9V+/u3p6Whb6op/6NTyoaCM8gS/pkkWZcxJ79uDJuvgmpuDyFO892MJtJvgT/2y3
         qML355ZFlrdIiksGYwC0wIS7YaqKu6MC3hvo7vTPBZ+DcLu/erewz/lSnoV2R99PDMIZ
         jVnbZz9Hy31WVTi8ngwjkK8YQIoMqSXTlH49l7zdJ5uEvDFI19yEBsdVlxHg4MSIbpLV
         QjZqSor09RydL76wO9kKNH6EqE5thBVTl0On+e5rHf68751YPyBwPOXZvuxNI6T/j+Wf
         WoptLJWNNLtwz3um7vv9cLRfLl5f1TtcFrdnv4p3Hxu3rV/HSN2aq90j3PlvP79jCkqC
         2/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+juhjthrd3JRyRpfNBmT2ODFRldo3/dqjk19Fv8Mivo=;
        b=ke1l3LbxcBgTWb3vDBqvML20x6Q90siIC91tqcH8bSJn/A0mdXhBG01g3vYuT9nu2l
         V6JON6NzVwXvEsTCSqLuVdJfPn4roqYGxBPBDBT2fcLtahCsBIU2TrIgsizkL/LCeJlH
         d8cdY7AiCibfhwtgylZDG1rsGgdMg1DvTZ3p0K5Daf8n3mmi+DSqFUu+RBWOZ/FLOw8s
         6BLRtdUwdh2elYwdo4WTn51QIakTmOTSBS0p/E73P6N2FIu+lXF12HD9OxzhcPGChCY2
         1vtD8YqAUbz0pWKfujZW/8TypvffcrKzp4BbjLDJB8QK3GUIvFKf8Vt78wtwoAo03BuL
         cWBQ==
X-Gm-Message-State: AOAM532HJRedD8meOBiPi16KYbU9NnSiZUC0ygJKEAM8zTDpXO/PhLqG
	u1iHDRaEb8VavCyskXEPnWc=
X-Google-Smtp-Source: ABdhPJyTw5k+9dmUull1pJUcM0e6ECRb1sZ43Dy21wAgv1MiJq+01l6Q6GS3os8RxhQ5qkwbX9C+4A==
X-Received: by 2002:a25:abb2:: with SMTP id v47mr29246932ybi.386.1605034184545;
        Tue, 10 Nov 2020 10:49:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:84c4:: with SMTP id x4ls1826606ybm.6.gmail; Tue, 10 Nov
 2020 10:49:44 -0800 (PST)
X-Received: by 2002:a25:c042:: with SMTP id c63mr28657165ybf.465.1605034184053;
        Tue, 10 Nov 2020 10:49:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605034184; cv=none;
        d=google.com; s=arc-20160816;
        b=rRM1oIYJfJ4T7GKIO67Mepezn3Xdv4Z2IlGG8JyhK3PbZVZD/+bPpQ5EwNHxPZnfOz
         0Kf+0S1pnlY3V7iFLWxKUjgBpX00GjcuZi88JfrnGV9d+P/ghvJELlyKE7jGcpaizd0w
         5rpywCbGu3X6gFtAUjTu57sVEeyU1rTguUEzJyyuk0k/l6/ZbnMQ+Nre8gM9+o3E5w3h
         F2TEOSnXLf5ONcRZxNi2r1NSQxwrx2EAjWEaW1TM0vvMbBcq1EWGsVDcE/fMzTB/EebT
         dZvov6ZsWMnGO/3hXg3s0sG1xJNqWHf4p+VBb0TzMDFYNxDSYVsMgqJjEH/1l4wV98ln
         Pqhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t5ZUi96uNmNfRchQaIascZgaM1rxpoxNRYvzb+XWok8=;
        b=Hzxm2kL+w6j0+ee/z0ovGNA9ceDLhp9lgvoScKy7CCK93dd38F715Dz4cwQoPVSEgi
         4oA3Kqe3RB4DvJA33+ylEH1JtG8QSF+8ACgYu3JjaE/2X3dx4uO/0dHP0PcD5lUppilK
         7T1I/l/ndvcEecGkgv/5oAs2wTvM4JKiv4oBaRFJepzVZjwca6U4/f8UDjfTHevXGvlt
         FXUvibU6rBU+fifROUPY1+eWmaWN0oMgxDvM6AA04wLB44hYJjAenlkGt/kv3Q6XI/Rb
         wBt4Mr3LNQ4xJG46Ey2AeekYL31qvF5QXh6OWCBjOU6QvVX3+ghNChqhgjK64SRih7qA
         TaFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TCCBd/9G";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g36si893259ybj.5.2020.11.10.10.49.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 10:49:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id v12so12228455pfm.13
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 10:49:44 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr502841pjb.25.1605034183119;
 Tue, 10 Nov 2020 10:49:43 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmqEmPGqbkg9KpgXh+jG7aWtFVn16SCUxqANBYQPLhoXg@mail.gmail.com>
 <20201110015632.2509254-1-natechancellor@gmail.com> <CAKwvOdm1uvFpG+zJkkQfuSoQkh46-Vy4NNex_koQ+RaKZD2q_w@mail.gmail.com>
In-Reply-To: <CAKwvOdm1uvFpG+zJkkQfuSoQkh46-Vy4NNex_koQ+RaKZD2q_w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 10:49:32 -0800
Message-ID: <CAKwvOdmfxrs=J8v3oKC=YCePJyFq6Kuwa9pOnrrFbKtAD4NPxQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: Link with '-z norelro'
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Abbott Liu <liuwenliang@huawei.com>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Florian Fainelli <f.fainelli@gmail.com>, Jian Cai <jiancai@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="TCCBd/9G";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Nov 9, 2020 at 6:05 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Nov 9, 2020 at 5:56 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > When linking a multi_v7_defconfig + CONFIG_KASAN=y kernel with
> > LD=ld.lld, the following error occurs:
> >
> > $ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 zImage
> > ld.lld: error: section: .exit.data is not contiguous with other relro sections
> >
> > LLD defaults to '-z relro', which is unneeded for the kernel because
> > program headers are not used nor is there any position independent code
> > generation or linking for ARM. Add '-z norelro' to LDFLAGS_vmlinux to
> > avoid this error.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1189
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks for the patch!
> See also: https://lore.kernel.org/linux-arm-kernel/20201016175339.2429280-1-ndesaulniers@google.com/
> where we just did the same thing for aarch64.

I was thinking more about this last night.  If we're going to be
playing whack-a-mole for each architecture with this, would it be
worthwhile for us to raise this up to the top level Makefile?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfxrs%3DJ8v3oKC%3DYCePJyFq6Kuwa9pOnrrFbKtAD4NPxQ%40mail.gmail.com.
