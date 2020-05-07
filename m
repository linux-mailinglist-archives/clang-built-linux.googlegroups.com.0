Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBIOE2H2QKGQEOTG7QOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id A44591C9B22
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 21:31:46 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id q7sf962161plr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 12:31:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588879905; cv=pass;
        d=google.com; s=arc-20160816;
        b=0CXMhSuhxr+rKRV8afs+b8jwyNVdA3N4pGhCzv/p3ITlNhlw5KiqhpgGaS5v78cx7O
         TrVa4oZe8y3xZXnd9qbpQ3r+leFixOfMmtnTpAStAgJ4Beb5To3+U0L9d5Xo7j/8xKqw
         9svaRNI/zLLomMhgN2JLkE3RRtWOpbojFlHJ89q4Scsut/tlKzXfEU0/R6D+wJs9qOMz
         aJ2xgOwKy9jdSVmRmRS2rpMxl8aCHLKL/w001xvyDKl3r94KIwpWc8yo12CZDMbi3ugg
         IeO1fof4HiiXcSok9ePrgUF5/3X0oRSREHVx3NBoQOs+Je9Z7D38jogxhtCZEWnuIeVZ
         l89w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=dke24gWuPylHT6dt6D0IURdUO4UXl72iIH10SqcHEEA=;
        b=l2IUnxZImTCZSiEvwBeeFUrKUUkYXDzquay9WBMMppPs2pYq/2zckdUgCr+6jAJuPV
         iULf4wmc4R7ZK23UFVF+eaVbEt6TrmoC7gBq7Br8Q1m2FWAu1oynZs6bz8fghsGMeVMh
         j1+xQsEDGW0KNeg3fCE1uAxuNUToQUMDet+W7aWOiCNi/tKqH8UZ/wGGNGTv7VbVKxMK
         ej71Dcn+xhjNf7iqRTPluaMTRhnwezKM0Qx6Tu7M0OFBXONMIJBfcWkB1kgHlRCKuaCQ
         PevcQNwW0SA5buBQwBTM1183cpnfqahHMsTxZ/e+9fL8wIOTHBepUYzFsQCVlDw3Qtxv
         LPfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=diBzyttg;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dke24gWuPylHT6dt6D0IURdUO4UXl72iIH10SqcHEEA=;
        b=sq6mW6s3ERsRV31kqaXbxEbhxELPUpa4D0Euc3Y0WPK8D4URa+bf4gWn2ojymul5sP
         N8ZYmFiMyjZqKX9I0mrxBhUm+KXeINfuuHCWMPO4cvBvPhGoC2qLcC8YTOoHb4y+/FPG
         IV/gMBF/iROhq6piM936vB8ABS6rdgNzLZ86xik3rsAjUGH/9hhNMCut3Y8jaV4sppIx
         OylGR2j32/5EcY56FpXZ08I7jw6yRjDkZC5M13Cp72oJkKrzLAvrhe4PmIHjcswf3+gE
         syud+TfcWBqH3WTYUB9e/FHUkuWcQacROuidQr3Fv7P1nIHSTysSLDuJb2jQcIrNgVMn
         Ke7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dke24gWuPylHT6dt6D0IURdUO4UXl72iIH10SqcHEEA=;
        b=BgdEVc1uUVnz24bRoqdVq1hCamLqnX/lEeuwcW6VMPO1VpW/IM8gtFHa9HVCVhgDTs
         1hh/mG5jXyvYZHYz/37X532xAhBovpmxqDB6cLzF7BQIEVds4yZAku0dxbH7QOxcjPbQ
         D1ATCcGXd1PuW0jTMxwGPHrDSz1qDLzMTf4SjrTD9YFB64Aixx859UPE58/BpmIv1ezV
         xKhh8wpb7Vgpm/RHkCatVpAn4Lt9o7WK87P0OjKeGUgZIfkR943en0mk0G+D/Ha2DMHX
         7RChETaTR2Pi0wEV2b3Z15AfGNaHXi1oUHak548s5r3MjmITzWaQU+1FCKrruprDiWaF
         VMKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZcr3HE3WbyUwhP/ScKsyZJsn3PNfWZ3ejjPBnmDEIo7aep8eKc
	PTQM8rNQ2neyLKWSnr55lA4=
X-Google-Smtp-Source: APiQypJAkpbzd4NK1mtnUwHcaUawDOrqvH+Ba8LCdPsh0yJxri/L3HM+K78StmdgiuXxaSmclK7zXQ==
X-Received: by 2002:a17:90a:ad93:: with SMTP id s19mr1733353pjq.73.1588879905336;
        Thu, 07 May 2020 12:31:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:9289:: with SMTP id o131ls2412950pfd.8.gmail; Thu, 07
 May 2020 12:31:45 -0700 (PDT)
X-Received: by 2002:a63:e44c:: with SMTP id i12mr13205695pgk.421.1588879904893;
        Thu, 07 May 2020 12:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588879904; cv=none;
        d=google.com; s=arc-20160816;
        b=toEUDPB6jRBcMjGOfZFueiZc27SQvBdb9xd4zxbYeewkBplJi22jHs61/N5M70LWRx
         XaIvmf/lUPgWAw4PI02ThBSXMUrxH1OtFV5gTDXpciW8Vjz3kbaej+S4OKRN56Eep4ng
         zRYQ+Mf7P+NYEdPgpeK7pialpNvY+XJdS2k/ilHw7w5XNqyD1JIS0cGqR1xL/eDrXggX
         3m5XHp4BfLrCSVmER0DkpZExz5HZKRuNSVOfwVszpCDxkjfqNtAYhB3cAgjFySL2o92E
         FscqUT90zYKiEaW5+ijJsua0sVXE7Pw64n/t+udiAlT3zJpovlGb+DmSu6ivScaYRbUf
         EEiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=KE1Z5fw6ohOckf8wSoQnCowGQBds5ZKNZR3BEwYeyEg=;
        b=p4ENn5Dv6igpnIr+WBp+K9gH7EizfbMSo4rOm39KbKhQLXJQOGQ0V3e46VMBrfrbmG
         vna3h7YjLxAq0Y6iElR62SERpVdONa9UwbVTaNRz9sLj/IsXckGknYvGhdJBql5vJ3W8
         bk+BOjbSsNYIT9GSI9xkh98ZrXSBKl6u9q5n01RkblJeC/X01AZjCy+V+cJWpO+8uzvq
         q9QKGPDLR+Sr4/5XbAuxtbFAbUt9wQWNRp0NRvac/j/oGgRV+xjQzQDh+a5zBVTtx6Ta
         oKtDqn27zEeHDXpmuf6XEwV/gsqEl4XKN7RmCffuQmACc4x/TsrnkvQiVxLLWfDVcJQr
         VEpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=diBzyttg;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id a1si459777plp.2.2020.05.07.12.31.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 12:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8600:3281:6547:66ee:1a90:d675] ([IPv6:2601:646:8600:3281:6547:66ee:1a90:d675])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 047JVQfh3526709
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 7 May 2020 12:31:27 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 047JVQfh3526709
Date: Thu, 07 May 2020 12:31:19 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <9c701ca55bc442c1899a70896f3ea73e@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com> <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com> <6A99766A-59FB-42DF-9350-80EA671A42B0@zytor.com> <CAMzpN2iCgr0rb=MCYPGMx8tcfLq2qdzv0h7YnX5hkzBB+O7JJQ@mail.gmail.com> <9c701ca55bc442c1899a70896f3ea73e@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: RE: [PATCH] x86: bitops: fix build regression
To: David Laight <David.Laight@ACULAB.COM>,
        "'Brian Gerst'" <brgerst@gmail.com>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
        stable <stable@vger.kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        the arch/x86 maintainers <x86@kernel.org>,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
From: hpa@zytor.com
Message-ID: <A6FD91D2-8D3A-4767-B6AD-D35B056C58C4@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=diBzyttg;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On May 7, 2020 8:09:35 AM PDT, David Laight <David.Laight@ACULAB.COM> wrote:
>From: Brian Gerst
>> Sent: 07 May 2020 14:32
>...
>> I think the bug this worked around was that the compiler didn't
>detect
>> that CONST_MASK(nr) was also constant and doesn't need to be put into
>> a register.  The question is does that bug still exist on compiler
>> versions we care about?
>
>Hmmm...
>That ought to have been fixed instead of worrying about the fact
>that an invalid register was used.
>
>Alternatively is there any reason not to use the bts/btc instructions?
>Yes, I know they'll do wider accesses, but variable bit numbers do.
>It is also possible that the assembler will support constant bit
>numbers >= 32 by adding to the address offset.
>
>	David
>
>-
>Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes,
>MK1 1PT, UK
>Registration No: 1397386 (Wales)

They're slower, and for unaligned locked fields can be severely so.
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/A6FD91D2-8D3A-4767-B6AD-D35B056C58C4%40zytor.com.
