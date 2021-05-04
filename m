Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDGOY2CAMGQEAFQ3PCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1088D373119
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 21:57:01 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id w4-20020a2e82040000b02900bf1f739c0esf4365385ljg.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 12:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620158220; cv=pass;
        d=google.com; s=arc-20160816;
        b=UiiWBWYOg/+Q0ZNcFvUzm2YXswjpjeYQWB42qYanqLwUTi292ZHkaW9PkwpIJ5Sw/i
         sOdFKRpafbfcbe9pInClOJfBNy4TPwqz6a7Rb1V/yR7DHAfkSPHZQDd6bt7SSckdvx1+
         VnpmB3pFephOQumQR9y7bCb7HOHoKwDd11EwtTx6rPA9TT6KT5OR7AoX437xsP9gw+ZL
         I1YJSoGPRU9ncWA+rp7+t3jgvp/LGRh5r3NDmtxVIbjQ2pg6pEoHmsROtBYav7doBpNc
         xO4GPgtRRr0d14K3b57dj5ydbqA46TFccFoQVAS5Sn2IHwYVKuBUKoueV8pzcUz2mi5C
         BZfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KMft1pUArwSt2aoqI/CiMwMTaC4ns/JBxwMGR22fa+4=;
        b=Ae8W6Qniir5LE2Ck1Jiikl7LTbU52Wgiz8758t9lOxuZGeD0x10GHwH1l8vgdZRiud
         o4bBS4OhpmoSU1wEOY5ZfRec0MpifOoT6DcjfN+JglxiRV7mQu6TfdpRmnF2qNwYlZOs
         O373xou/rsVGTjphyHFU1bFXIcWfdVGUauLVV6DGWtPo5TCWpG2U9jYTj1m9Ie3gTZCa
         cdNfDTAl1lbTT8mJUh7cijFowSbDuFl0NhRhHpdO1X8rMvbWCJqXFKMNrz72ZUdBqunt
         zJU5smA4nbgCkKccs1OXRtFxtOz/pjUWcGYuQ6tulX3nrTe8txa1EHRoqbb4G2oblfiQ
         mxbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uk1lUHdu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KMft1pUArwSt2aoqI/CiMwMTaC4ns/JBxwMGR22fa+4=;
        b=Jxfdn2tEXxpsfEWobWrA9tchqJv545+xuCBhuVK1IdlRXaaO4mYQnnVX8QokbxeQAE
         rOA6ACVontUSujzIFv3xDk/Kagskw5Ih5gmTxw83vYMk8QprMLSOY//qCZ9kGzktjoVj
         8nFa5/CRKnR7u/bzkPt3cg3F4ThOVGnFP+wyWbTixtLudREpN35hRA1QTOTNKxNDYajc
         mLoy/q9eL5WELo9pXLNMmOva+AMGUraxxH/s4rVIbF0lNKJBb8a1tIHka+CxZJegBS0N
         bnJFqqcfJYbIamLAz2UjAyTH2Yct8Qgc8IUmcr/otQwM48RNBSf9hkYM01/dbfwngDg3
         skvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KMft1pUArwSt2aoqI/CiMwMTaC4ns/JBxwMGR22fa+4=;
        b=VTcH2Gs+Yox7EaQ+Dv/XyxfawSxXl9uhKzORzZUCQSmrZVB1z3M/zb0C7FbAxigRip
         FP1OAPs4f9umLpjl5/jJmbtAwyffNOXdKhbGUVTqcQOikR9jT2J3HN4qG54SEuyfpuS0
         sTSzHxJfjVptCx/KuqPl7fshu0OaRxz8k1+hcWzrMBPkKwRDRWM59R5AeHkA57HClbic
         I5ka6zs1TZvD9E/gNLo6Io1VOs8OgUYExMyJH1TYeH6VZ8G6FVr2Nq4gcBegZHQupH9E
         cNiMaD7J8EQsxs1yER/04hobpnrnqstWcLXSGAx5k+t4sIKiDlAJV2Alo29yAmW0+vf3
         J4mQ==
X-Gm-Message-State: AOAM533RO6dhIxb7/Rqc9WM+lZ0gSopog4sVAO/PwHn822taVsrN9aZM
	/iY+bfEgZ9nesbzgnHE/jcY=
X-Google-Smtp-Source: ABdhPJzZ2hEggYQdEuxVPg+QsrqyHP977jH68qSKIwluSAWykEa6V1GYE6LhzneCM/o47ZVg+E3qRw==
X-Received: by 2002:a05:6512:2209:: with SMTP id h9mr1865286lfu.474.1620158220618;
        Tue, 04 May 2021 12:57:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls3838342lfu.1.gmail; Tue,
 04 May 2021 12:56:59 -0700 (PDT)
X-Received: by 2002:a05:6512:102a:: with SMTP id r10mr17998636lfr.224.1620158219491;
        Tue, 04 May 2021 12:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620158219; cv=none;
        d=google.com; s=arc-20160816;
        b=QDSglgVgFGhOyKsSCCamVRV+8Cy3Benu42sx+EbmtkVMB3n33CfLV+ed2D9U05Iqoe
         EEOsSbPxut5GVeXs/nKNNq/ZYF5+KiTVBc4wOJr7ref6c9b40z9Z8P4I9wVi1NcmrFA5
         gP5n1OA1nFKXZ2o90pyNxRtSQQqiJVnWFUk7HphbmRPS8haZxzacUdtL3GaJcPvo7RGG
         vhGd0CkcyEqE6ojx02Bf9zsmIyE7p+i8/TzZi7ySNaHI6ZPgqH7Tug8khM3Ov2EIoAmi
         OMkppYtjHKNIiMtTf0PZtTlkQxN3hGd2ohX8q67a0rcvK4IW0zYjcD58zxByAeKXmbYm
         CnXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mw6s2XohgqBEIfIqVR7BYJqyqPXY+TPkZKPNcgefTc0=;
        b=rjKsyLkwkCpV6TAokkzWRS6HDNjOUJ6w6C5AWjPmPQ5ufty6m3MNy2imm7VYyzGumP
         QtE6kllqzK+BkPCd8DLhMn27llrUkc+QYBE9LjJPeDRfxXt3iZ+9jZ95zjADTMzJXy01
         OzMcCDeykNebosgqHnysVC961TV4qewTiHsgnBLvi+37lExZjFBTqS0eSVobjMVMTd9R
         WUFZrhOq575z0BJKCpvZt2D7dcDAiDtW3F+UudiRh6CkY/o16I472bklC32RELHmgiRm
         hpgeOr/UEswE+w1Jj1E+KSUIDwNqYqDRWQ3tUnA9ohuGTAgbLFHL9OvoiF86leVZIKOK
         je3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uk1lUHdu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id e9si204337lfs.4.2021.05.04.12.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 12:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id x2so15067287lff.10
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 12:56:59 -0700 (PDT)
X-Received: by 2002:ac2:528d:: with SMTP id q13mr9761663lfm.73.1620158218969;
 Tue, 04 May 2021 12:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210320122227.345427-1-mpe@ellerman.id.au> <YIcLcujmoK6Yet9d@archlinux-ax161>
 <de6fc09f-97f5-c934-6393-998ec766b48a@csgroup.eu> <CAKwvOd=SkPtOij0tCx=AzUsLD3RrJZBFs0WZKuQJ3c4JM3Nn6Q@mail.gmail.com>
 <CAKwvOd=kU=gOci7y1CjZaKw+w5H3kZ_CfzGG0=r+Fs33hLV4uw@mail.gmail.com>
In-Reply-To: <CAKwvOd=kU=gOci7y1CjZaKw+w5H3kZ_CfzGG0=r+Fs33hLV4uw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 4 May 2021 12:56:47 -0700
Message-ID: <CAKwvOdmdp4GXHabnVWuSvnE+2CZegzdmbeg0TPotM=MFwQ7_GA@mail.gmail.com>
Subject: Re: [PATCH v7] powerpc/irq: Inline call_do_irq() and call_do_softirq()
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Nathan Chancellor <nathan@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uk1lUHdu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Fri, Apr 30, 2021 at 2:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Apr 27, 2021 at 1:42 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, Apr 26, 2021 at 11:39 PM Christophe Leroy
> > <christophe.leroy@csgroup.eu> wrote:
> > >
> > > As you can see, CLANG doesn't save/restore 'lr' allthought 'lr' is explicitely listed in the
> > > registers clobbered by the inline assembly:
> >
> > Ah, thanks for debugging this. Will follow up in
> > https://bugs.llvm.org/show_bug.cgi?id=50147.
>
> Looks like there's a fix posted for LLVM in: https://reviews.llvm.org/D101657
>
> Though trying to test it in QEMU, I'm hitting some assertion failure
> booting a kernel (even without that patch to LLVM):
> qemu-system-ppc: ../../hw/pci/pci.c:253: pci_bus_change_irq_level:
> Assertion `irq_num >= 0' failed.
> That's with
> QEMU emulator version 5.2.0 (Debian 1:5.2+dfsg-9)
>
> I didn't see anything in https://bugs.launchpad.net/qemu/ about it,
> but figured I'd share in case that assertion failure looked familiar
> to anyone.

Nathan pointed out some previous reports; looks like others are
hitting this, too:
https://github.com/ClangBuiltLinux/linux/issues/1345#issuecomment-830451276


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdp4GXHabnVWuSvnE%2B2CZegzdmbeg0TPotM%3DMFwQ7_GA%40mail.gmail.com.
