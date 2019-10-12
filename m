Return-Path: <clang-built-linux+bncBAABBXGPQ3WQKGQEJG5HZ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 22238D4EEE
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 12:15:57 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id b90sf2370639ljf.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 03:15:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570875356; cv=pass;
        d=google.com; s=arc-20160816;
        b=oXozzgRel0ye9K03P0HLco4xOvIq71gkEr3gtqhq3au6lvLwavsBtWJhcYqHmYsA/G
         E2Qh54OLK4o2wTvNfYAEC99BWQDaocBfPdNv/zJWODpsa90icCQxDnIM/D1xEvc/zZ9/
         ZdGQ1LJD95XOFzZ6zVK31TW8O7rOFR2cLi4uAA98Yadr6O6CNk4yEhGpVHToyTwrUMPd
         gNndpSdHin5uO613h26D66WffJKU1FIcnaSN7qlSaS94lRn/r/azXweDGzD56AqA8dvr
         q7KNwgWkKYeuasXw2qF0RsK9EuWrG//wsnCagf5Ja4Esx7EqNudPy8oOMBioC773LFSF
         kjig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GIBktpgK16aUyA2l8bdyZxi18BvaLguzfpxcRaQv1RI=;
        b=PiDpzHgClshf2yL3bOg/MRQnaTnpM+5AUWI800y0xhLRWLCFMDfmtCKAYqGFeEw/d7
         EL7tsCdBOtd/Y+SdIBP5ZKTMvB2h+SZzl3KnXsYXusN8nSo1hSNgV4M7ucCY7b03/0iZ
         e8QVYHLGqm3twuGGPVpTAdkhZEXOSveXqPuD0MXHXt5IofcsdZE/m6R+i8seM8RMMs+B
         wXnY22zgqi+94SWCQUplB9l6pI/zZYsZ8H02Mc00n801/bAQj5jm1cPUER8Ugm/DVsDC
         lni0QRxa2q9nWkCW5PYaeWa5jNtlg9iEDOv8jG+Ksa2H0eIp1vo9H6gEuZE8Bdb3tyvG
         z+dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=SSmm4n4E;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.22 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GIBktpgK16aUyA2l8bdyZxi18BvaLguzfpxcRaQv1RI=;
        b=GzRyT36vJI3lilveHUCrpR9XPukUFD0w37FZnqI4bkx6nxG9Oxt5Cyn9eDO6wwoQX6
         PObemHG6klDy3s3T+lw7ckOA1b7icfWAwnwuN2qwTdgObtR5J634j2xcqM0tes+l56Cf
         UTb6ENIHQOGeKOxiffdZrWTk2om6XzUqqda61HrGI203n7nuGrQsbsJPCT0hKEqFFN9f
         BLmaPgARH/33ZHsDCWfypwcfqX+vBu3Yu0FXPeTuszAC6td3spkl1TwveWP4vfwWIFjc
         z/HXjnyzqgfHJYK1ipmb54H3RQfy+vt9bLkmPzTIWrtZTeoLByYavVZyDjGdovov8UM/
         GERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GIBktpgK16aUyA2l8bdyZxi18BvaLguzfpxcRaQv1RI=;
        b=ej3oLtdS3RIW4rSUOfp60kThU3cCUqNPksoLtV/p9dKmqNtx6Pt0u7fw4pA394NsH/
         /RpfcizfGq6Bww+TZas8q15Sm4LehglBRyImSCMhs1TPz6/Vixu3f+uO2QxxaVXdTzBo
         Xb0INw0J7dzxCH+g2K/b2IVB9fqWtR7oFeGRAAUBUItAaGOqQrOA+dJWuHjMGuCpfbUj
         Q7K5pPmL2q/eT5UapnYoFdApsknOuS8A6N11rT8jVt2CPWpzvF691rpDSgvozng/DGg/
         CxH3uck5QpRU4xDJp+12esvyO2CzxDWacXrwcZSjJWvolPwUQGMcgnZOwbg09mgqqiAw
         IisA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUU7Xt3Kuy9FWIlv9krudWmYnaqD/lj6EgJOL9lrCwULoa0W77c
	A53NH42qlBpONF+yMxc2KZ4=
X-Google-Smtp-Source: APXvYqwKYCK0MNVbX3AW4UPPHbgqxZn9BpLlsx9vHOUV+iDBXMN+nEfjRhyr/wbrnbXcOU3HZ4bvsg==
X-Received: by 2002:a2e:1214:: with SMTP id t20mr12232824lje.240.1570875356708;
        Sat, 12 Oct 2019 03:15:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f246:: with SMTP id d6ls921083lfk.9.gmail; Sat, 12 Oct
 2019 03:15:56 -0700 (PDT)
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr2992070lfg.173.1570875356153;
        Sat, 12 Oct 2019 03:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570875356; cv=none;
        d=google.com; s=arc-20160816;
        b=w3cFbqa3OdwSfVTbRaAm9pwL6+1vii4P25HNqbV2DmIOF7M+j7zxoh+7fYMu7Hn8iv
         RcXszlL9RbIApeb1iv4HxLH+thMEPbuWoyBcd1o8JDqs/kzgkr6rjsBjjKKKenUOM4E5
         zUy6Tvr4X3apgJomEPovlCkTVUtLuYgToNjKwABq0miRsf5oBLH2QncjjEZewJCIl60G
         L1sQeccP1NHq41FcHJ35cXWwfdOpv3mqpMBj9B1jett/GZYWunBOEWCWOuUBLauJtQc0
         IekE8UDKG4vBwalMjkiX5USJwQ6VNA6ch6ibx2h72EwQO4LhaUKvRSAlV44vs3qCI8Id
         3SKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ZQ91mwFM465ZClCZe/KMOdYETmXf1Ag32zbiw4HU6XI=;
        b=Uuj+teZ8MQfIHCAUvevaYbG0DHRw76LwVLFEL3JN7A5xEpOS/UgeZNLk1Htp1FX6n8
         PivM0lN3WttGPTaPynnQVPLfVmsh1HW46enXLe/QVjMY1yUq5x+QaXKLJxcX8TVnRxGo
         WgGCMC+qsTxCET5SJHleGwLwhFjxL7ocBgqFnmhtmIPWy3GbIloetk713n/d3Fn4XKEw
         Xw5L6H2KvvvTUdpiNjYZGcW1x0BYGNmjwN5MKySoRPtKktmgfs84vC+olO9MD7sI3D+E
         Lozq342kG9/nVAL8VzHiOu0UT/Z66EtZCR+Mrbkf3KzOPQT210BPd9rm8Ngd1DJoECU0
         17Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=SSmm4n4E;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.22 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
Received: from mout.gmx.net (mout.gmx.net. [212.227.17.22])
        by gmr-mx.google.com with ESMTPS id c25si250168lji.2.2019.10.12.03.15.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Oct 2019 03:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of wahrenst@gmx.net designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MQMyf-1if2Xb0z9l-00MHaq; Sat, 12
 Oct 2019 12:15:46 +0200
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Will Deacon <will@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Morton <akpm@linux-foundation.org>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 linux-arch <linux-arch@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck>
 <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck>
 <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk>
 <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
 <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <20191003163606.iqzcxvghaw7hdqb5@willie-the-truck>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <35643c7e-94e9-e410-543b-a7de17b59a32@gmx.net>
Date: Sat, 12 Oct 2019 12:15:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191003163606.iqzcxvghaw7hdqb5@willie-the-truck>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Provags-ID: V03:K1:iNPi0emfRc2oUZROqqK4veOxMGlI1mxOV8QIg+mTL89EDO4EH7+
 2lPiQqrhfyLQf3Vg7Nx2BonaDOVup6w6ynu05PFl4ZaypAEedCbmvWH/e0gaOPDqtB12rE0
 scCifOpESngb1/ghKnIoQ7qmU2S/fCwI+DV8bqUvbiMV16JH+HdFb3Y8KCPac6jdrjFKUTi
 aEhBSH51ecKaJn9oRDSDA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:k56ojK+HK+c=:YYXDWCMArLbvl8rkdSZUww
 WtwdjpbVTUDvlbauF1Ko5ax54EYeXpCCRe8EnFxoqi4CTf1qr3s9HOHCefpTHbVM0U3e0u9Bf
 N/NU9bWQRQ9Y2UXYRMIQWjxyQ8lufkwLXFY0Qctmgki1Ny/vq0yIkxShaVTfG5e+nI2qWflu6
 vwYRgpEKmaimaVFsxMpU8TyicQ/76uEZGrzrjUjWZXC4wHZd3gFhy8eP1kw4EntelfFhfq/1n
 br/iee9F1orhdfett6o5Wv1THxAGooETIiP8G1rym12bxQpwHRD3XfOaapM9sM8S2Id20oGTB
 16XCzYlTDA0vXtOZMVE3HKhRF8S5JREWpQTkii7T8SSb4kncgMmniLrN+LNyztdgB5cPOutnK
 NRFOjCNMugrVZKsC3cjeIxYbnu50uDMd2EA+29aIxP8uDQLvOc1i7Gahk7Pe8+bEMCAUtIN7T
 buSOb4UUr1O4Uo+3iTcwaAJw7b+ZZOyP+c4MTFAn4+CFQnoVvlsoHWUV/1BnxhwECaM6zKMyJ
 QdN1KdC2HvTuuqHjDB2DcobfuZhIi9yYdLkEyDTtLz6s2gSzGHpkOkq/5ujaxORmoh2fdDX26
 2r4EsIpiDOc2Iyshkh7vxzM+doOmvkJAU+rEptQ7a7uFbN88t6Y8oQdgn/6nsLH+C72mhs4Iu
 lAW6wbo7lx2KqHKNP3TDcHKjP3KSbtLr5wMoxu95lXC8MbpMSPSoUJN1CgtDc7HESOO7pRTB2
 xRMiVKOyUuQqmkL3kTE/DJa/sP28g3rOUwa8v2PJuvuh+wnMGM3jwzVjsvprZ9qUhqiSBq8YD
 0wsVe1v9qbssm3fBWgmeyf1Ese1dW5YmweRvd3XPGDqFj3goRik6QC7/VPuutzfbDIYEkU4xy
 nmAbeZ7FwSsECvwW9H0NBm7Ik6wM9/ZtMLDBiCKASznS/KIT97qAbWoZv3WVKU9GoccNd89tH
 1zESTaBj0UB+WRJZdxZfqHbTlD8z68iiimkgUUUyj4DPFZEzWTcT6Nefjvra8PKVCAh0ypU+T
 xfoLP/ysPrnL69qkVBK0D1FkMVqLgB8RZIDRN4j0wXdjS3oLj0Nh6+psRA9NW/XUBoo7f8k54
 DLECtGLWTFBTDUgqSNYwbgK22G+x6jrPmzxVEWl3shvusvQ3p+wLgEoE7Q9N40xJo4Z5FBv/5
 Lx/jJBMkpP8cGQEkXNjIHNI0XvRCSzAGA37GVTeeoQ/lu3OZ0sfm38qQsIBPAuUpdtv6H8bNF
 EGNi1EQC/OJXevzquoGPEByZ7wqgOXccV+P2DmJibaBVDBof5bLfdIP8dsfE=
X-Original-Sender: wahrenst@gmx.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmx.net header.s=badeba3b8450 header.b=SSmm4n4E;       spf=pass
 (google.com: domain of wahrenst@gmx.net designates 212.227.17.22 as permitted
 sender) smtp.mailfrom=wahrenst@gmx.net
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

Hi,

Am 03.10.19 um 18:36 schrieb Will Deacon:
> On Wed, Oct 02, 2019 at 01:39:40PM -0700, Linus Torvalds wrote:
>> On Wed, Oct 2, 2019 at 5:56 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>>>> Then use the C preprocessor to force the inlining.  I'm sorry it's not
>>>> as pretty as static inline functions.
>>> Which makes us lose the baby^H^H^H^Htype checking performed
>>> on function parameters, requiring to add more ugly checks.
>> I'm 100% agreed on this.
>>
>> If the inline change is being pushed by people who say "you should
>> have used macros instead if you wanted inlining", then I will just
>> revert that stupid commit that is causing problems.
>>
>> No, the preprocessor is not the answer.
>>
>> That said, code that relies on inlining for _correctness_ should use
>> "__always_inline" and possibly even have a comment about why.
>>
>> But I am considering just undoing commit 9012d011660e ("compiler:
>> allow all arches to enable CONFIG_OPTIMIZE_INLINING") entirely. The
>> advantages are questionable, and when the advantages are balanced
>> against actual regressions and the arguments are "use macros", that
>> just shows how badly thought out this was.
> It's clear that opinions are divided on this issue, but you can add
> an enthusiastic:
>
> Acked-by: Will Deacon <will@kernel.org>
>
> if you go ahead with the revert. I'm all for allowing the compiler to
> make its own inlining decisions, but not when the potential for
> miscompilation isn't fully understood and the proposed alternatives turn
> the source into an unreadable mess. Perhaps we can do something different
> for 5.5 (arch opt-in? clang only? invert the logic? work to move functions
> over to __always_inline /before/ flipping the CONFIG option? ...?)

what's the status on this?

In need to prepare my pull requests for 5.5 and all recent kernelci
targets (including linux-next) with bcm2835_defconfig are still broken.

Stefan

>
> Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/35643c7e-94e9-e410-543b-a7de17b59a32%40gmx.net.
