Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXGX4L7QKGQEH4ID5YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 121312EF7CB
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 20:00:46 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id gt6sf7123304pjb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 11:00:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610132444; cv=pass;
        d=google.com; s=arc-20160816;
        b=ywHXboqcFuP//bTvq8GWQm8N8TvlEsJJHf3UsvyGO+T4wAuwygoso2kwRvLtfqQzeO
         KZrhnPxTVy16eocsrNmkbl3oC94tWiAGg6LYiTxzhY1XlmVBdSuQwr4WZ5qV+HwUYwMW
         1M4rRGweZjBrfy6svTFsBtj3UGX8gFhALWOhNQIUU0/CqzifIApMx6p5lUPLQLNx2mb2
         W+ZoRphi61/nAnyBxSaeZ/uRvljvsD3RJr1425Cu8AanRf639Y6Hlihtx8fipSxvmvwB
         3JKY9TpIiGXgidbWRnlEBr9fr9MAKKqaoN1OJFHLT0uYp9OzFX32FN+CALDPfM3QXKHS
         ilPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Nhpfz0JaDGKW8lV2m1yo4QAwruP0yatZMZPQeu/sgls=;
        b=IVP+028/R/CQIfw4yURjP6V8vpSkGEReT8U7RH+tU0zABu7npIIyYVjDXkMIeVMpN3
         vJBQzC+UHvrii8opZbAvauKxaWlEf5XXwJc3qx6bufmq7ZY9+RFp8HREllb5Q5lmRjur
         Wo+ehYM2i2kZmyHRhvmdO1zqZYhW+9ULrU1JfJWQrxe8ybnw0k4UB57JgjO8Ugm0bkTa
         Jz9DjdFjWGumJziZ3mrgNBZJBvyD7/Mwi1C06R4fvxpyNq0tuED+RNslZrhaYAcjBMlz
         y2LTF/OJvOknv7VEW6S822N86uEx9E/nAlKnj683P1u0GvxaZ9ubz+1jmrWAmmsCzVdh
         84WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aYxbB0pj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nhpfz0JaDGKW8lV2m1yo4QAwruP0yatZMZPQeu/sgls=;
        b=rzv/BwYFhV8UrBE+Wu/N9j4Xbm/GMZ7GNmEbtid2GPupM7Tcd1s6csHbGSyqttwZj8
         n5BKsu/IUbsoAvTDZNWqnh1oUBppNXLeo2aRh8fjxSyEE3R78CTzvenn6ZOoUAmsO+QP
         iBUapc48U6Z9a1mQ3OQbXNe2Eu9cjoHnCmqYMjc+i1bgcz7ARU//Y1uwUaLbCxz5NTtC
         s0wJAQX4uHg5G5JQkhTDoyzXFYBnyk3v3SBcOx7cJDPp+p2FUbJPT5WDaKTy+yfLv4T5
         ITrP/xQ1NqXfjQY6CY+61lSatEUp+OyneH8mRgjdvVR15PgsqBIxV9O6RYy9D79O2Toj
         VFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nhpfz0JaDGKW8lV2m1yo4QAwruP0yatZMZPQeu/sgls=;
        b=IKrKFrtIJsLZzsF/zvmvUIQ7YOeeodblOLJLw/sYSfWMo+loWSQP9t5guZktXixGKz
         D7Np0I/6neKr7NXDoAIiBgZJP5LkPsavPdcR6yar3LSCMu6cpvlSBp75NtGZLGPcWyl+
         34iG3CzblK/E71v5lP8qsXymvj7CVlFA4Xl46efhwJzcanzXUBh7Fc68WB+aNlfqju3a
         w5fV2mgKMuCwOqZ3p8PXy1GaekR094gohziuTa7KMf1MRyHUmlyelzgfKx5ti9QsIVkg
         9vn6861VYDa1Xvf/hhQ/4tj5RQ6Slo7LYUOCYGxxKO/wVbQ4UvoL1nnDLprqz+2EnCHC
         ftjw==
X-Gm-Message-State: AOAM530s6CtZMOrLId4V13OVTrvLKUMXwQeSQC5uOegF8spHU6G8FDZt
	wCWzy7QYZZ/bjzUBbNMRDNI=
X-Google-Smtp-Source: ABdhPJz9z/jepyEDsbORCXMNsurtDtHx7Vcij7UaIk+KNrs+tMqvzHyhpy3cjEVT4M00McHT4PemTg==
X-Received: by 2002:a62:7fcd:0:b029:19f:5d05:4a83 with SMTP id a196-20020a627fcd0000b029019f5d054a83mr4831528pfd.45.1610132444759;
        Fri, 08 Jan 2021 11:00:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9550:: with SMTP id w16ls4308603pfq.0.gmail; Fri, 08 Jan
 2021 11:00:44 -0800 (PST)
X-Received: by 2002:a63:1446:: with SMTP id 6mr8265301pgu.313.1610132444013;
        Fri, 08 Jan 2021 11:00:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610132444; cv=none;
        d=google.com; s=arc-20160816;
        b=SmgQWZdoOcSjceENNymkuIVHE6WMt+e/rj//eTUq1Oxz+72DPxr4YSPHQ+j8UZxfhf
         YGU89wKPg3sb9wozpbcx3auhUNFVovBiHvo/KF+WhYdqKdB/sERgA2RkRVfQaVzto/Fi
         Y1g0snPagfYaJUK1vG3GJsZYhWBKByDTWkVI+Eyxl7lJOMEFBrBGkrmYYEmnn2buMOUB
         1fkTVd4OC7dMEBIBV6elLeW6LJNVPWvGcnQAeN0/5m+lDANsH9qL1k6WiAVaAK02EXnE
         IpmSW/ToTB+sqbIgzuXvztPRbWZC51+k9EwYvprBQ8CFJ78US3DBD2ZmIZniLH6oHmz5
         6BWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/TIuQ/Dc6oV5cFFdg8BY3A+MTZC9D+x9g/kzjwn+7Ic=;
        b=hiKqs/LmvMuRx9PX5UBVvPQQMk6OJLGPga1+Eqx14MVQlPyhOEyzxnJe1stFaco/9n
         kjep624yRI78tp7q1JOQEIoWsTr73eIP85dmxR3BZVvIsCNdHHz6fz+YjbXNf1zoYJ2M
         p8l+EEARu7O8POyq+5OJ4Wok9FKNLYWE1T5/9t7EVP54kkEKtZnH7unMpYhcnaQP4sPM
         qRHE5R8b9/Hm/mWdQy2cSKEBOQNQhcw+qfZoqtT7d99yp7Lek/S7merGVi1paU0arqqD
         b/0qmCuD0w2JrIz24G12UrWQRXQeINHzjVzQGYvV7L9vyGAkGLzkrIqFUKiKdWvPT+ll
         q8eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aYxbB0pj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id b18si771302pls.1.2021.01.08.11.00.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 11:00:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id b5so6697783pjl.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 11:00:43 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr5313216pjj.32.1610132443201;
 Fri, 08 Jan 2021 11:00:43 -0800 (PST)
MIME-Version: 1.0
References: <20210108132049.8501-1-david@redhat.com>
In-Reply-To: <20210108132049.8501-1-david@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 Jan 2021 11:00:32 -0800
Message-ID: <CAKwvOdnMNRDhuAo78Hg4vAvbZF0jXY1=UaKX8F1oe0pTpjYD6A@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] s390x/tcg: fix booting Linux kernels compiled with
 clang-11 and clang-12
To: David Hildenbrand <david@redhat.com>
Cc: qemu-devel@nongnu.org, qemu-s390x@nongnu.org, 
	Thomas Huth <thuth@redhat.com>, Cornelia Huck <cohuck@redhat.com>, 
	Richard Henderson <richard.henderson@linaro.org>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Guenter Roeck <linux@roeck-us.net>, 
	Heiko Carstens <hca@linux.ibm.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aYxbB0pj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

On Fri, Jan 8, 2021 at 5:21 AM David Hildenbrand <david@redhat.com> wrote:
>
> This series fixes booting current upstream Linux kernel compiled by
> clang-11 and clang-12 under TCG.
>
> Decided to pull in already separatly sent patches. The last patch is
> not required to fix the boot issues, but related to patch #3.
>
> Latest version of the patches available at:
> git@github.com:davidhildenbrand/qemu.git clang

Hey looks like we're off to the races!

$ qemu/build/qemu-system-s390x -M s390-ccw-virtio -display none
-initrd /android1/boot-utils/images/s390/rootfs.cpio -kernel
/android0/linux-next/arch/s390/boot/bzImage -m 512m -nodefaults
-serial mon:stdio
...
[    0.365077] Linux version 5.11.0-rc2-01914-g16586f130181-dirty
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (Nick Desaulniers
clang version 12.0.0 (git@github.com:llvm/llvm-project.git
e75fec2b238f0e26cfb7645f2208baebe3440d41), GNU ld (GNU Binutils for
Debian) 2.35.1) #76 SMP Thu Jan 7 17:51:34 PST 2021
...
/ # cat /proc/version
Linux version 5.11.0-rc2-01914-g16586f130181-dirty
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (Nick Desaulniers
clang version 12.0.0 (git@github.com:llvm/llvm-project.git
e75fec2b238f0e26cfb7645f2208baebe3440d41), GNU ld (GNU Binutils for
Debian) 2.35.1) #76 SMP Thu Jan 7 17:51:34 PST 2021
/ # uname -a
Linux (none) 5.11.0-rc2-01914-g16586f130181-dirty #76 SMP Thu Jan 7
17:51:34 PST 2021 s390x GNU/Linux

For the series:
Tested-by: Nick Desaulniers <ndesaulniers@google.com>


>
> v1 -> v2:
> - Add 's390x/tcg: Don't ignore content in r0 when not specified via "b" or
>   "x"'
> - Add 's390x/tcg: Ignore register content if b1/b2 is zero when handling
>   EXEUTE'
> - "s390x/tcg: Fix ALGSI"
> -- Fixup subject
> - "s390x/tcg: Fix RISBHG"
> -- Rephrase description, stating that it fixes clang-11
>
> David Hildenbrand (4):
>   s390x/tcg: Fix ALGSI
>   s390x/tcg: Fix RISBHG
>   s390x/tcg: Only ignore content in r0 when specified via "b" or "x"
>   s390x/tcg: Ignore register content if b1/b2 is zero when handling
>     EXECUTE
>
>  target/s390x/insn-data.def | 10 +++++-----
>  target/s390x/mem_helper.c  |  4 ++--
>  target/s390x/translate.c   | 33 +++++++++++++++++----------------
>  3 files changed, 24 insertions(+), 23 deletions(-)
>
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnMNRDhuAo78Hg4vAvbZF0jXY1%3DUaKX8F1oe0pTpjYD6A%40mail.gmail.com.
