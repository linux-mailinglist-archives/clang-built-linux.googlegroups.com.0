Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSFKU6CAMGQE5A5KKTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F40C36E104
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 23:36:08 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id 32-20020adf92a30000b029010d6849a4e1sf2827353wrn.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 14:36:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619645768; cv=pass;
        d=google.com; s=arc-20160816;
        b=yepO4pfPbCtSwPy+04qTMTDiQQgxCttxK0GnnHChbkjIfHDmC/m7gRhcIJczMPsBjn
         ud2kWySMnZ3OR8ioyNfF8EvBC1VeahCLBCBk9d4ngrnSR58JBoO2LGsp2e2G4CcH1+JR
         vR6wBHnrX2OAClYV/xviGoZEk650Y7zGY6mhAkcwsCfziAfFDBhvNdPGwS5d9FdXjJT1
         zC1xem/reYOZnsXwR7D2HblMrMn+nVkeenktc4SF+BLxUjeFS2iy8G1Bx8EhAHK6//om
         gXsPO/0sjF4a70w6Yr7NCr3fEa8/+NvKRew1ZbrPSy8+1JxvG0rSrvQA94y/QzjzoFLS
         3lDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2K2Jd1hD2s2u/bsTgGx3bu5+cmQ1xaPXCLFIzwtbyTI=;
        b=U7MVwPJy1nRSj3cWMvAuBIi/Y5F7+eX7ZX9UEbEhDgs4mLi2LVT0rjFumaKq9RgEIt
         hmtDkBcedTLZlJwZogbRw3B0E5bom4k3yk1x/VR7BGRCIpNiCI3E2kKLb8xP/8n2xoEr
         qRRuGyZQhkqUB8sZ5gqdptUDqkFEECuQ12f0xei046Wnf2hhLDJc7mYfl3zX2d8NjmB/
         2psPVnKzQvzvNv2WV4PSvoeY7tltyKdv8WE01PIBe6dh7DhyS9ajBbZ12ITUeCnpVRRG
         IIYjLEB+XWZwnJcPYsV3FCY5ySJ+Qe4htNh1ufzE9f+TUlZEDFCJLinI4sZ/k4r6gdhj
         3aJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dnABKZZq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2K2Jd1hD2s2u/bsTgGx3bu5+cmQ1xaPXCLFIzwtbyTI=;
        b=Ttg3NzWDjMIFSccwm4nQo1f0sZ1ce5co9SYmv8hyj8lSIFZKTxKiwBZimV1plmCQ/G
         BnwktlGzMTblNDQA8vPnF027SnM5ZnG55U1OG4gn4lj49IyuK5rt8NCSIHufc3tavs3P
         efR/dQbacnBr6xTaUbhCgmUP3bJFo/7WPeEDuEHawnL7uVWtS4IPx2alajDMqw3quCwA
         hw9MmngvVupXpqf9dz0chw8rh8/2vZU3bCBCINK/R3Jmo9YtM+THoW4/BdAnI2kPL/iz
         aB3YoijjxoCGJc2zogVE/WEeO03jNzqnID+zQe2zSVP4VwJewpYCCiMoFcj7gmTch+am
         fmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2K2Jd1hD2s2u/bsTgGx3bu5+cmQ1xaPXCLFIzwtbyTI=;
        b=QV4dEIethh641/Xh4I0wumVjd6u9bgVODtpmyInsKyareOmNep+hWu3ZQ5o3fOJT99
         BN7WVmznr9xdfUgdLBcgC62ZfnEb/NVCpc67SjcRaykicaNSaiFjRz8DxTF8fsXo6i6A
         YNwNbJJklZbpxJNJeTH3Ey8xRJppzNpjQn55JxUd9jdrcGUo+GB8uOnFt/k5gnI69izL
         lDABkdhQ+FneAeQ9BRplZVfiJlmmNJKs1BTHyLGOUOqiSOk61/ftx9bS6RJnfQQlYmDE
         W62xD2KEpnq09ATHQlLSC734Lf1DJ1ARsf/QrntJGfL0Ee94g/g4VSG24/7QXXCI5Dim
         sNwQ==
X-Gm-Message-State: AOAM533tgNdsQLow3WOfPEGUw9kYJssUwzd/SzxeFBljC7vzhrGaWTvV
	sry94oAm4Z8U2Ohn67Q7GVY=
X-Google-Smtp-Source: ABdhPJxYO6s7R6m6Cm/jnJL+B+Aj/bswnkh9CGjsL+C/GL69hfZZWFDkwox2CVczAlvarj3pwrn61w==
X-Received: by 2002:adf:e907:: with SMTP id f7mr29986885wrm.86.1619645768386;
        Wed, 28 Apr 2021 14:36:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:11:: with SMTP id g17ls481705wmc.3.gmail; Wed, 28
 Apr 2021 14:36:07 -0700 (PDT)
X-Received: by 2002:a1c:a949:: with SMTP id s70mr6779462wme.84.1619645767510;
        Wed, 28 Apr 2021 14:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619645767; cv=none;
        d=google.com; s=arc-20160816;
        b=rxOrOyY9abaqREiRXyVx+WMZE7m//FrkIBJ/wNzpagTca7CRNVTozbLx9KKNJVQopI
         NWezlXytYh8ct++80gWmRkrZs0hAzGV4WuqRUnfRrhYU069TXBwUU+LqowzpHVrnhvVu
         ZnAaXjOFXO9lM0CQI4rC7Yqg0qiTnJeQIjSXRF9NbpOkJc0DfoTZ0o/sOLnjnGYJpnOH
         tflwYY9EbRtqYCWk0UNFoULMJqTUZKZv9moYGWL3fSPtq+SvnsGJLlPbxqLTdeSFNXF0
         S9+euSJJRLoHVUYcY51RfzW16om8qmHVkfzTISHErscO/NRBN9pn67rytxnN+Tfh8f0g
         rI7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=INQzGi+nqRuSjFGCFb2JinRzLrdPb7QoAQZ41k0aND8=;
        b=JwyzN7ZbGZzlGRr7gOrYABkAkJQPgP3ttswrrHgDSbhJAtFRvjFpef1xjJc0qXllIi
         JuGZTqoueBswmJtUcnfFqHlkB1uRQ0QDA0NWWFTsPHyunHX3CM8cHDmGsbXENgNL9wc2
         YIrCbSggZ5diaTTBcYbjmZxbwYWgaYhpdyQPkELOMvWfO4IpZftgtTCgEfXcnuUQRgFO
         BjPnSKSpy8vZfDKKf8N7JqMy39sCaLM6K+4KMyUp7wYbXmze5I3RW6LBx9wHFEdg0aG5
         nF99PvTbvQafCEI5Nvatqn0Ra4Kyf1pbpfXdhF9Ph8ZfyDi+9nCEDVQMEz2Pdl3LZTB0
         SMBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dnABKZZq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id l2si233397wmq.0.2021.04.28.14.36.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:36:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id 4so41660293lfp.11
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 14:36:07 -0700 (PDT)
X-Received: by 2002:a05:6512:159:: with SMTP id m25mr23117273lfo.73.1619645767010;
 Wed, 28 Apr 2021 14:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
 <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
 <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
 <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
In-Reply-To: <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Apr 2021 14:35:54 -0700
Message-ID: <CAKwvOdno3GmcAcL2SGTtfh2qp3y=3az3ZwBY6K06YBat4Zr-3w@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Arnd Bergmann <arnd@kernel.org>
Cc: Brian Cain <bcain@codeaurora.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dnABKZZq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Wed, Apr 28, 2021 at 1:57 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Wed, Apr 28, 2021 at 9:50 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > On Wed, Apr 28, 2021 at 12:30 PM Brian Cain <bcain@codeaurora.org> wrote:
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > And that's the first time I've been able to build hexagon; nice work!
> >
>
> I built a defconfig kernel with my test tree and clang-12 now, that worked fine.
> However using clang-13 I got one warning and one internal error:
>
> /git/arm-soc/block/blk-mq.c:631:39: error: passing 4-byte aligned
> argument to 16-byte aligned parameter 2 of
> 'smp_call_function_single_async' may result in an unaligned pointer
> access [-Werror,-Walign-mismatch]
>                 smp_call_function_single_async(cpu, &rq->csd);
>                                                     ^

For this warning, maybe you could help us encourage Jens to make a
decision, one way or another? Or have a good idea yourself on which
approach would be best?
https://lore.kernel.org/linux-block/CAKwvOdmoud9=Uf2xN7q1c1gP06ZNU4K2-Q5PDD-LTynHC+qOMA@mail.gmail.com/
https://lore.kernel.org/linux-block/20210310225240.4epj2mdmzt4vurr3@archlinux-ax161/
https://github.com/ClangBuiltLinux/linux/issues/1328

Not sure we can go back and fix things for clang-12, though the point
release will be coming up. Maybe making this dependent on clang-13 is
the way to go for now?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdno3GmcAcL2SGTtfh2qp3y%3D3az3ZwBY6K06YBat4Zr-3w%40mail.gmail.com.
