Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBF4N3HYAKGQE7RWYUVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 442F8134EB3
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jan 2020 22:16:08 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id f11sf2463407edy.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jan 2020 13:16:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578518168; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sa9SjM2+IYPzjKahsfb2OTNXgR5PKySOaJApHeBiOuyKuB1sB9o9ewKIKuEeCaEZ1K
         YsrIge40hDcFk2FbmyZvy++/NtNFwZB+L9T/Qr3MwoYmxyOf4NY0Gd+8UlzQTS44vUV/
         ZiFJQnrYEUwgjMHrmmWpO9+2a51R+t+d1z/c16ZgpasezgXZIfEr/GeNxQGSEcz5e0G+
         NOR66HOsoJTko7MqqGFz50ili/nzK/j07LaUdoTbWIfjygzMZXZoFOFZp4coDbiDf9lb
         WyN1lbXyfXtOIL32FKxH5NvqKE6mxqPPSDq3fsdJEa/CeeYwGQh/vNZeDuYPO/K3/3bt
         wplw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=izfvWXbG0z0wjUT1IngjhRXlPtzSoEruXbSMEwg2neU=;
        b=CD1IAmLWbTNZtFmetWecz4l0YNyfJI9p7NF5/suCqFNUblWMgIDaY0a7lWZYgPUHXZ
         KfKDN6M6b+BNVBNGJXfSi/XUceagYuD0lbIViMjZFOzeVEeMXYK0k42xa42y9VDPpqk9
         wtLaaaPV5c49ZM7TAQfPDkJxcZChPNvWBsY331t5tIBh9O2sLoupnsNC5xwLlNpzHXjQ
         hBcJXSV5dT2HhSu6vF3AM+2MrMcOKre/+J2vfYS0W4QQbS3C/oMpVsLu8soPJMveL4VV
         zj9d2HhK8XiqE2DVszgYihyblr8oradaoCx3ejqHpzgNPG3R+SdSCRraL27IEPXgBx0Z
         WCaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IQu/itqx";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=izfvWXbG0z0wjUT1IngjhRXlPtzSoEruXbSMEwg2neU=;
        b=JldG+pu1tybF3r0XUj8ENmvS58teGHMkUrhZiGdnuQAFVwZmzom4xiUqaP8SCITi17
         K7pRurki4WA4LkJu3PxJKtdNwAjRbyDqDWPsar5ndaBmmp3MtMlAv4Dg4l8Kh9Nh+RxV
         /y5ZnC6E+p0hcu13Q83XlxO8IVvOOlatnlM7cN3FSQdVkRwx/drsmGm10SPFsFmvKTjI
         BoI6ljYMPp0BmNoA27h8hy66gXlkLO0k7Dl4tzqSrnYbVLFnzrKyReLXIShF5nXXzqbM
         tmIrZ1IPJ4Zuow8xybWkgrC0IlaLbuvNOhbgjhdNFmWhRCROWIU8Mr3uuytv9raPVmfb
         Qf2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=izfvWXbG0z0wjUT1IngjhRXlPtzSoEruXbSMEwg2neU=;
        b=vgYKaCtDj8a6Qloi9We/SeexHoLW8LmXThtO/VhtJCCXbCTuKeegKOpn3SjFOwQwNc
         8jL4clpDkwztUh5xnMEGRZqB1oEgeAf3tEpwOSZQ+wPJ6KZWrnSn8WF+6WuG+bFmC/JU
         steX3mrLmZpN9xzs07+xccQbOdGHN8nJ8WIdEXNcNLQmCVYJal7fPj4ErFhOxF0r5XPE
         1OZSTBhiZGJgFsZjZ7TdhVPFtb+emTmcx/luWGTjkKykyB+fO2S6m6SwTxag/IybC6M2
         sp3+1kSuP8N+6qBevfRpy8qbzWEbr7IaT0TvBaje0puwbmZ3vZwsHUwtIgS5Gt/14ZWs
         Jy1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=izfvWXbG0z0wjUT1IngjhRXlPtzSoEruXbSMEwg2neU=;
        b=qHCw0BhS3lTPps+5Aj1X+DbvoZWcNtgvrApTskvXARozn7nsIoWlUm4An17KCrqO8a
         CNbgICxbrNAr0REZXdqWSEaKciAGwrIOUsMGk3yBkZALFV7QDTcGTMcADhNjlCW/R3zA
         BzYEMuDEab4dx6C0vn9z0DrTj3maqwKwEbxwLVc+LpempIUKB+5ZPKK2t4yqw60WN8hv
         mRDoF+PwEE+rbAfnk1jJGkLh2NlG7rxsLYTF55+TJyYmjR90Tmhds91MmFPRLQuBTGDw
         W1s2TZTStRkubxN73pu3laGgMsPFbPWLpmwD3Nk398C/ViHRxy9GvauGMTtr11JMHJ7e
         Lk3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPZwLbBrTQ598Q/McqLqcwwEYAtysVp8HXzbobu3KdNN7H5Ejs
	/QrY2mJNIaBUUhhMwphDW9A=
X-Google-Smtp-Source: APXvYqz+kBnKd4zy+0pH2XyV3g1lQ4kKMS8OwQUG1Opy7VNiPL2aDl5WKA+BMSrhBd+S2fbbIIuC7Q==
X-Received: by 2002:aa7:cfd5:: with SMTP id r21mr7705483edy.248.1578518167948;
        Wed, 08 Jan 2020 13:16:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:cd1b:: with SMTP id oz27ls15163ejb.4.gmail; Wed, 08
 Jan 2020 13:16:07 -0800 (PST)
X-Received: by 2002:a17:906:79c4:: with SMTP id m4mr6906895ejo.287.1578518167224;
        Wed, 08 Jan 2020 13:16:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578518167; cv=none;
        d=google.com; s=arc-20160816;
        b=xVzTuFHHHhLRLIjzaR3LbEtsElbACQJP+jT2hExnxIwHMF1j3YBCqJDEoktBvvJW7L
         IjRNW61z90SKelw06nEcXkYyEZmQHUXkZTweJQyh/hugfo690O9A1y5wHn1qx4SIFlyj
         BPE/X2DDyorVqZt6RDqqRIfoe/4mulcDLEqBx+d4JAnt0zCiXyzrYsMAS5/EWUeGT+yy
         MVJTudawYAwK3J4NEbNWjMHJHmxOxsOe33YhSB5l41wt7PZsH/g4W+6jEG+PTdkyZQqi
         +JRGg8+sjHB+5Ywkk1i66JjEuAZwDiVDNEYsvwzzEDtcFXUjuLy5SeAjtsxyT00jzCXc
         GV/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rQC5Xc4zHlR8QuB9T1rA+4pjSY5nfCmUZHpYZK7OKXs=;
        b=KS9Ux1AIMBp6bvp0GpOfVglwcsLF22r0vicnULlxN1A82EZ+EWyMML1LHGGMAppdLc
         Knaze8o54u8zzLnuXI0HpdgmDPoyqUOJxExyw8V7cfqSWluAZUtMIqqW60QolBF1YNhy
         74dcYXuiUo06MP/F+D9QhU7gFhr/62bAf0SD4IcTzLkh/EVYFawHqghYlizwJkIce9UZ
         3RDwyzOVnJT6idl6S3a4MF/tRXLHNe9qS1qYEmm/ihzvssAZASNMV24iunNHJA5OVNwQ
         XR+AR72NX7aW7FnM8hy+CqxClSrmGZpCMqwip8WrPQPDGhx4gRm8NPwYVSYB1GK3flt0
         6rdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IQu/itqx";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id k9si168291edq.4.2020.01.08.13.16.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 13:16:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id d139so538067wmd.0
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jan 2020 13:16:07 -0800 (PST)
X-Received: by 2002:a05:600c:218b:: with SMTP id e11mr603003wme.121.1578518166931;
 Wed, 08 Jan 2020 13:16:06 -0800 (PST)
MIME-Version: 1.0
References: <20200108073928.GA51655@ubuntu-m2-xlarge-x86> <CAKwvOdn2OqDjxF7KEua9PMKg8Du07x+LEpVkptB7S4v9g4f87A@mail.gmail.com>
In-Reply-To: <CAKwvOdn2OqDjxF7KEua9PMKg8Du07x+LEpVkptB7S4v9g4f87A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 8 Jan 2020 22:17:00 +0100
Message-ID: <CA+icZUUcngQThNS0bgfBUmPRsX0C17z55MxHLhuYAuM-0ZgxPA@mail.gmail.com>
Subject: Re: Current status of building certain defconfig kernels with popular distributions
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="IQu/itqx";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
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

On Wed, Jan 8, 2020 at 6:10 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> So looks like anyone with clang version < 9 has issues. No issues with clang-9?
>
> Thanks for all the work that went into this report.
>

Happy new 2020,

speaking for the Debian side: testing and unstable ships clang-9
version 9.0.1 (see below).
clang is only the meta-package pointing to clang-{7,8,9}.

My last days at credativ I talked with Bastian Blank (Debian kernel
team) to have an easy opportunity to catch Debian's kernel-config
without extracting from the corresponding Debian package. I remember
there was a link to catch them easily.
Personally, I am interested in the Distro's kernel-config but
"working" in sense of buildable defconfig is a good first step.

Thanks, Nathan.

Regards,
- Sedat -

P.S.: Available clang-9 and clang Debian packages.

root@iniza:~# LC_ALL=C apt-cache policy clang-9
clang-9:
  Installed: 1:9.0.1-4
  Candidate: 1:9.0.1-4
  Version table:
 *** 1:9.0.1-4 100
         99 http://deb.debian.org/debian unstable/main amd64 Packages
        100 /var/lib/dpkg/status
     1:9.0.1-2 99
         99 http://deb.debian.org/debian testing/main amd64 Packages
     1:9~+20191211082622+c1a0a213378-1~exp1~20191211193200.102 99
         99 http://apt.llvm.org/buster llvm-toolchain-buster-9/main
amd64 Packages

root@iniza:~# LC_ALL=C apt-cache policy clang
clang:
  Installed: (none)
  Candidate: 1:7.0-47
  Version table:
     1:10.0-49+0~20191222210225.7~1.gbp8a5286 99
         99 http://apt.llvm.org/buster llvm-toolchain-buster/main amd64 Packages
     1:9.0-49~exp3 99
         99 http://deb.debian.org/debian experimental/main amd64 Packages
     1:8.0-48.3 99
         99 http://deb.debian.org/debian testing/main amd64 Packages
         99 http://deb.debian.org/debian unstable/main amd64 Packages
     1:7.0-47 500
        500 http://deb.debian.org/debian buster/main amd64 Packages

- EOT -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUcngQThNS0bgfBUmPRsX0C17z55MxHLhuYAuM-0ZgxPA%40mail.gmail.com.
