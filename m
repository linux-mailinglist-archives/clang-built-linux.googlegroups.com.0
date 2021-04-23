Return-Path: <clang-built-linux+bncBC6Z3ANQSIPBBXNVRGCAMGQE4IP4EFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-f190.google.com (mail-qt1-f190.google.com [209.85.160.190])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E23368CA4
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 07:27:59 +0200 (CEST)
Received: by mail-qt1-f190.google.com with SMTP id h14-20020ac846ce0000b02901ba21d99130sf8875794qto.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 22:27:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619155678; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGfm3iSo7s/ZQM1FAwCVleBRlTIBqEFeVp3qxW2kVkUw4lWg3EtQ4NzTGa4/uoTV+/
         39E2YuFtUO/q2/oeP7rAdJqY4Pi/KVotFzGVmJRGrJNUDkBaI6OJr1SJenvXQjSzJ2c4
         AUCUvz9oNJJUXXTk1bUwhcwgkxZ6i9DXJ1UJMXVIZ57txUid0ycWqIoukR0sJGu9Mitf
         i5qbHrOI/WAAyyjhgyUdXTDB7N1IimIDYi5pW9Rbd6k6Su6zQLUihzB716Zmu0agTPFs
         IHBYl+bjB00ucGHVbFTAaIr8XPpHKlBHqN6L9sJDa5ZrWUjnpK1Jmm+XTq/KmGZNoR06
         08gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date
         :content-transfer-encoding:mime-version:references:in-reply-to
         :subject:cc:to:from:sender;
        bh=ksWOzIbjZ+X318fpI5J6/GxfVPIoBI9pZMEjgLh8tIk=;
        b=sfClNL2Qc1ihr5gzfpQneY6HiEsqJGDxfMLbQb6SO648Lz4WQfC2P3/9AoPSBfp/EO
         qLy0Tn482pu1a96xMR9c/gKzO/icgOxWSftOFUGNV5UgNamHaW0aOsjZvJqN9Xe9N+8P
         VhCzm8bd+JBDcuT3SUQIUvY1s+s3TAWDv+igqjrKqsgaRb5KR0lvwFZgQG+fuO8w6mXV
         gNPvsCptCZ2SZbzcZ36WfocZ5fT8JUSPyqlYZcgF5bXVq8DpWnVa+p5Kf6o8g6AEuTND
         5ROTq7Aiw4wtC4QKDCfDHqYHKAqQ1vrGLkVW6w91VWUOAzHAeM9iraLxuVT7WJoymIhH
         8xMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vt-edu.20150623.gappssmtp.com header.s=20150623 header.b=ch8J5l8A;
       spf=pass (google.com: domain of valdis@vt.edu designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=valdis@vt.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vt.edu
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :mime-version:content-transfer-encoding:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ksWOzIbjZ+X318fpI5J6/GxfVPIoBI9pZMEjgLh8tIk=;
        b=V8OsMOqeUaoVrNB5vIOS+xqWxQCMQpVVNYJXmMj7mfhehDZ9Hohc5ymwY/bRAG2vD3
         qe4yBeyPaRWMlHNUkOUEp3hEHr2pDOb7uQTZeGCPmbWSEnPFMFCqv6Ad/FB2hgk9cxID
         WtzMKOLPcGjl1vkXkH7hpiqBXOzFV8DfjYY7xfu6CdiV/UGp5YitY5LuI5myqB4QYxZ8
         T3pM3dgAAuU1ej920qZqCgDFtufWnY4Whzg2iwW85NcDE3q2s3Wg39g95vC9Z8Vni/Bp
         bpHdPVYizzOmOv6XpdT42sRA1T/c074MrsnI1OV1p5NC6gKtw8a6G+Yp0OXOvpohYVUA
         OLWA==
X-Gm-Message-State: AOAM531qAjWl44boSfwfqJF+UGKCRPjJgXV+0+Y3kSLvnJ4wnyaBo15B
	9rbPIzI3Lnw8g2LURZIcNNA=
X-Google-Smtp-Source: ABdhPJzgzEP/U+wBpAw+IweOy46l6AspHQkCbo8MFh16bZq3dsudAUaJ0wXekI25HovW9kcXejXXTQ==
X-Received: by 2002:a05:622a:250:: with SMTP id c16mr2051869qtx.7.1619155677905;
        Thu, 22 Apr 2021 22:27:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:dcd:: with SMTP id 13ls2293735qvt.0.gmail; Thu, 22
 Apr 2021 22:27:57 -0700 (PDT)
X-Received: by 2002:a05:6214:1467:: with SMTP id c7mr2331971qvy.7.1619155677344;
        Thu, 22 Apr 2021 22:27:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619155677; cv=none;
        d=google.com; s=arc-20160816;
        b=FB/pp5ZVu0UeoLDGE+CsL27qmIOu1iCiTxXziXhbCk7q+VWvaWoOcsr2aO3kako07m
         /QwUiZtX0V+JsH4SlXZ/KYIVeol6MD/bIxO490sRISMCHIHhlrPZ8mMwjBonhVwGqVJr
         lzgUGzZDFaeLkLJzveevGW5shiiiziAgu8Oxl9/r4MBV+R9RDXPPyDgjDHel9xSe5s16
         d46s634ulFqCI/Tpye/SW7gn81L/F7MsqOObp9Xx3Qg1slfvCmmA3k5n+Imcd4OQj/vw
         zpn5p3+9G7CtBs/rqPs0Gqx5X8uZh5FInBSJZX3pS3iHAtC1UNgsnE+wA3H/gbuFFAH+
         8PXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-transfer-encoding:mime-version:references
         :in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Psm75Ah8drx+ipb6aw7Hoi8ygDQm5jw8TTPOq34YtRA=;
        b=HW3ItNfu1LXqPp7YluWI3R9NhguQKhGA/8L4fLGL5ackw8PrD129IEwFsi5YSlAIHm
         5+1u5CCJmpDwZ4bVrK1TQQMcjqFvuAoeEDVHU+3ogBo3tyJlEBw9w9jLcybjA+sel0lX
         n0IWqpM0fgjy1rDaY01YyaKx5fFZ27mNHzTzZF/n67pdlf6EtmmR2Eb57J/QOMST+rhi
         lcLuS2SO3De0FBpzbqUSA0U5luKhFkoNa+os6Itc9QSQEM8outEMsfFel3F5ZehzGN0A
         xwCNOCtuoWAXDfr4hjGty+dUJi2gZXug0UXvzNv30BbZ+il1dh1fHKzAETSEpnxsXBTb
         ZgcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vt-edu.20150623.gappssmtp.com header.s=20150623 header.b=ch8J5l8A;
       spf=pass (google.com: domain of valdis@vt.edu designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=valdis@vt.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vt.edu
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com. [2607:f8b0:4864:20::832])
        by gmr-mx.google.com with ESMTPS id n63si831692qkn.7.2021.04.22.22.27.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 22:27:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of valdis@vt.edu designates 2607:f8b0:4864:20::832 as permitted sender) client-ip=2607:f8b0:4864:20::832;
Received: by mail-qt1-x832.google.com with SMTP id y12so35647956qtx.11
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 22:27:57 -0700 (PDT)
X-Received: by 2002:ac8:4a82:: with SMTP id l2mr2113741qtq.311.1619155677021;
        Thu, 22 Apr 2021 22:27:57 -0700 (PDT)
Received: from turing-police ([2601:5c0:c380:d61::359])
        by smtp.gmail.com with ESMTPSA id p66sm3664708qka.108.2021.04.22.22.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 22:27:56 -0700 (PDT)
Sender: Valdis Kletnieks <valdis@vt.edu>
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sean Christopherson <seanjc@google.com>,
    Paolo Bonzini <pbonzini@redhat.com>,
    Nick Desaulniers <ndesaulniers@google.com>,
    Vitaly Kuznetsov <vkuznets@redhat.com>,
    Wanpeng Li <wanpengli@tencent.com>,
    Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
    kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
    linux-kernel@vger.kernel.org, Kai Huang <kai.huang@intel.com>
Subject: Re: [PATCH] KVM: x86: Fix implicit enum conversion goof in scattered reverse CPUID code
In-Reply-To: <YIBcd+5NKJFnkTC1@archlinux-ax161>
References: <20210421010850.3009718-1-seanjc@google.com>
 <YIBcd+5NKJFnkTC1@archlinux-ax161>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="==_Exmh_1619155674_38983P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit
Date: Fri, 23 Apr 2021 01:27:54 -0400
Message-ID: <110961.1619155674@turing-police>
X-Original-Sender: valdis.kletnieks@vt.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vt-edu.20150623.gappssmtp.com header.s=20150623 header.b=ch8J5l8A;
       spf=pass (google.com: domain of valdis@vt.edu designates
 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=valdis@vt.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vt.edu
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

--==_Exmh_1619155674_38983P
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Apr 2021 10:10:15 -0700, Nathan Chancellor said:

> Unfortunately, gcc's -Wenum-conversion is behind -Wextra rather than
> -Wall like clang. If you explicitly enable it with
> KCFLAGS=-Wenum-conversion to your make invocation, it will warn in the
> exact same way as clang:
>
> arch/x86/kvm/cpuid.c: In function 'kvm_set_cpu_caps':
> arch/x86/kvm/cpuid.c:499:29: warning: implicit conversion from 'enum kvm_only_cpuid_leafs' to 'enum cpuid_leafs' [-Wenum-conversion]
>   499 |  kvm_cpu_cap_init_scattered(CPUID_12_EAX,
>       |                             ^~~~~~~~~~~~
> arch/x86/kvm/cpuid.c: In function '__do_cpuid_func':
> arch/x86/kvm/cpuid.c:837:31: warning: implicit conversion from 'enum kvm_only_cpuid_leafs' to 'enum cpuid_leafs' [-Wenum-conversion]
>   837 |   cpuid_entry_override(entry, CPUID_12_EAX);
>       |                               ^~~~~~~~~~~~
>
> clang's warning for comparison/posterity:
>
> arch/x86/kvm/cpuid.c:499:29: warning: implicit conversion from enumeration type 'enum kvm_only_cpuid_leafs' to different enumeration type 'enum cpuid_leafs'
 [-Wenum-conversion]
>         kvm_cpu_cap_init_scattered(CPUID_12_EAX,
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~
> arch/x86/kvm/cpuid.c:837:31: warning: implicit conversion from enumeration type 'enum kvm_only_cpuid_leafs' to different enumeration type 'enum cpuid_leafs'
 [-Wenum-conversion]
>                 cpuid_entry_override(entry, CPUID_12_EAX);
>                 ~~~~~~~~~~~~~~~~~~~~        ^~~~~~~~~~~~
> 2 warnings generated.

Note that this will kill the build if you have CONFIG_KVM_WERROR=y in effect
(which was a reasonable thing to do when KVM built just fine with it in effect).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/110961.1619155674%40turing-police.

--==_Exmh_1619155674_38983P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBYIJa2gdmEQWDXROgAQJS8hAAuyGWZ26P+Q93qoKN9KAKX0+D8xuUU3K9
g8Ky+540JLnFCiR6/0WXN1XGISj8VeykmFC4DWTToniWxELf8H4Kby5A3UkWQTGY
rksStkTMhS0Pq9kEOwOPtvJLaTfWhvpPfuA1FADWHpUWYIInymbT+2y9Hda/Ntpz
Q+5nAVf/Q7QYfWtflo8VmxIztrX4winoUav0Scyy5Hc7vbsU7oQZbY9/oedFhv2w
JcZ33B2PoV8ziJl9kSzkXG8Yl5YmyzZek3aWG5gaVAQk+UjhlrTQrKpXZ+m4308a
5RGEENqL4jcR9Gg52MwQkGg4GJVhPHqmKyFPntb0fLkfs2z/bL7/A6ZOYc6hqRX5
mClB3rwRwTgE26Js/N0HL8QA9j2Bp0MiovulScUYOWw0YyC7klsHLIjjT/JRwdtK
/4fq2Ye5oGpN3sWbrO3egfmVBMS3nnkuvlQ7j2tZwQUFUc+QNuEnbBi2yzPcl5hq
CMmdCkbbkAnv01AsvJIl5hiTLWRa6YV6pVLl6n0jEUnmvUH9VDB+yZKB5AVn1MbU
iwF6iUqIcVEla0YAVi6nQudufnzydzkwhr9lzIKg0XuEBGtms51601HDax/fx8Qu
oTEPKnoTwgxqNOC7wyAPZGkMKdDXWhjyWEGt0Z8rJzyJFwVIqVdc+vir6u9/HHod
GHUC8hRYmu0=
=fsOf
-----END PGP SIGNATURE-----

--==_Exmh_1619155674_38983P--
