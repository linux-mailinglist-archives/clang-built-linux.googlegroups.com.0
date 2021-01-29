Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBVT2KAAMGQEAOXSPQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEAA30908D
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 00:25:59 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id b1sf7265177qvk.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 15:25:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611962758; cv=pass;
        d=google.com; s=arc-20160816;
        b=ibJw7n6dnc88pdh4s3n7vPpRni4S9GeMKx9Rf8InyYOatsZJ6cMCgkYE7HSPfrB0Kg
         Zz7E8jK/G01CcebUVasaHqleauGeQ/5Y4sLKpZ3l8iPNWYt/5gaztuCrmgqJOcq6Gk4y
         2tPHlvkGiqzzkRdFxSTgswbZQGtmWqXZo9q9JoCtJdGtqF/3eoVLjI+utvJUBS42gjNJ
         c+BztSbRNhALvIRLXXhdx/rwYkU8vKWNL/KUhxKkigQtMqAFAwtxiJnX89uw2ZdiNIt+
         wiupdRzVwU+rUtiyXIiQ2nMnTk3G8vOkTbOONPp3krLcnKkbEWWK63jwWwAqZ4SbB6l8
         dlRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l5cPA0zn3t/NdZjrvvYuqs9vX4Q4eJ2ovprplAZ4zCM=;
        b=iMzM6cN+EYZuWuQ9Zqm+dblQhvUycfkMHPDX/po+qmOsuRmuaFJ2h6RUtiNzUVEp9f
         UjBnAm5CWuM5GINXxtPI7qzhxSkrYDPqFQOn783d2JYk8XBssRjVWeEkWBHR+snELr2B
         6lHBmVZhkoxshmPZ7J9JEJs5Sqh2ToSouUiNItUsnSm7SJOMEwUk7Tq4N3AEgPwq7nRC
         8L3+e1Xul52VfeHLT5bsU+eSlnPU23ka2ctjOGMVU7L262EITpnEEI5weBZTceT8sbqp
         47jedZBfmXWPhftf7vipgFLwFy36xsk9bYc5NhBvxSmk7egbsGg0wr/bEWN8cT9cy5hS
         8b5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vOhHlwRj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l5cPA0zn3t/NdZjrvvYuqs9vX4Q4eJ2ovprplAZ4zCM=;
        b=HCIb8gVDKVrAyU8amL7gFi2CtbabzuJf+DXbiwnMxQsV7pkFzFF0hhQ8dYx3sHLeau
         0k02b9hgpNGbgxRJcpam5OjvJvLaOXFzDs2X40JtlKvQWSRaGzXsKZJEX+V5B+m923w6
         Eq9ZripuKJBFBQtVfoxMSr7DBucVQDBN2XeijM5XOu992J/8wXY0ly7F4V++eD3BXDT8
         ORgm9vKD5M2IZBOyMw0ow2TKdIOEVu7iAND/awC/392eMHBLLS9obZvZhQY7EtguMOTJ
         PEqPYZKZfmwKqkCKNSHPzSQKRMm7KQEWn5DS8VXxD/7Fnv/J6u17wxxSm3tfzsdKgflU
         FlOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l5cPA0zn3t/NdZjrvvYuqs9vX4Q4eJ2ovprplAZ4zCM=;
        b=YvR+3ankioxxzsV1YFom25/fttlwUkGfVqVJkDL1jVosU0APELtlRncbvKbmZHQd5j
         8FP+udO9Q5h4KehObyJQCOz3Gs6oDgBXnWGlyVwPSv6VRw0JTlS4ZWHzF3Lo62PBtlEj
         Zood+UHRma6Z2MNycwuetUWoHKPK0++S6oOXEkjBr4uwrMvsOfTx9pFwDxfCWCnIcFes
         80l+d4kB7NDwhwZpXdCQtkcdBGW0ebMrKHlfqMUQGVnldeWb9BAwn3RhngzszLcuMNFc
         a+X3rF5m5j9DXdpv749AEo4DTDZGNRYV0m7WoUL90xAK5JhJgemY/2AZbTm5PNe1ZADz
         niQg==
X-Gm-Message-State: AOAM531oVZUv1xQlLwOahm2yADdMUemxtPY5jI0vQgYtQsZiOh0LSYDf
	8fmX0BjmeyYOTnhEjJm9A40=
X-Google-Smtp-Source: ABdhPJwNXRyNu9CJmnvmsTmnePM2Jzcg8+c2VGGeMvRv7NCDKreKXDmEcWvSj7JNeoLbgocRKVOfVQ==
X-Received: by 2002:ad4:5bc8:: with SMTP id t8mr6521171qvt.36.1611962758493;
        Fri, 29 Jan 2021 15:25:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e88:: with SMTP id 130ls5470949qko.0.gmail; Fri, 29 Jan
 2021 15:25:58 -0800 (PST)
X-Received: by 2002:a05:620a:98e:: with SMTP id x14mr6404587qkx.353.1611962758173;
        Fri, 29 Jan 2021 15:25:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611962758; cv=none;
        d=google.com; s=arc-20160816;
        b=yfaut1Wqd2Wo32rApnu5egGVRNak8/cjfYxqQKUFUUbadz2ZAifvxoH4xuwiXTXLfT
         jsQ/bno3+7CZRWIIw9DtjcNwUnMvXkdAkTEVRiOBBsqye19EZ0TwUTjjakM2CCG0wovi
         NcO/au5p3Bkj4cOE++fCget33zb971kRgOOJiHi7JZZbaE1CbcphBVrUXkXG1ZQ+oenU
         5tR7sIqSZ6i586ClZlBJuDFaWWN+Qnmb2Y0oQnFa+GC5QgXrmYgxjXUXFnV+SdtxQHlm
         8bC0qg1piNwgUqCUNNmtCS+f51qUz2RLEdPX0oTevcqZK5MRYPdmMP8a4geQI5z91DXU
         +yjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r64ZJaXzvIoi2lpGzoKBDTSTrPRQlB1BeO/ysm0s6kE=;
        b=MIHkMT/vbazBjTMVHn7PiQfpgwXTgHXkriVX616Q+OFf+AB2XMKOrVLQi67NwQa0Ad
         E4dycDnsgalvBS28q02PnwV4R2ulkPBYE7EwcrkpGYIgAzUU7kP+6RjkusZft+B0T/7o
         UClcNyA1ciFiJlx85SK4GpATtDkwXTjXSWQprXTtteZpLqlK1tX96tGb5fqcIXQk3EDI
         dsmFGfmTJnw50PrlL8lYCmdbmxCMg3d2ZttD2mINQ3HZM4NfSIAztvvlYwHgCsrG97Ee
         +6YfJ9LIA9okrSlZv4O37NT/C65zeoL2niNENvkKIpypQLbIuzXkSod7weulb174pfnf
         hteg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vOhHlwRj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id x2si136022qkx.7.2021.01.29.15.25.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 15:25:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id o16so7681608pgg.5
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 15:25:58 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr6576892pfy.15.1611962757517; Fri, 29
 Jan 2021 15:25:57 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <20210129205702.GS4020736@tucnak> <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
 <20210129211102.GT4020736@tucnak> <CAKwvOdm-+xK=diSKKXXnS2m1+W6QZ70c7cRKTbtVF=dWi1_8_w@mail.gmail.com>
 <20210129220939.GY4020736@tucnak>
In-Reply-To: <20210129220939.GY4020736@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 15:25:46 -0800
Message-ID: <CAKwvOdnte8Ck1ywodbY7ED7U046j06C+D-ZcW6kS-fqyaJbmCQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Jakub Jelinek <jakub@redhat.com>, Nick Clifton <nickc@redhat.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vOhHlwRj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

On Fri, Jan 29, 2021 at 2:10 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Jan 29, 2021 at 02:05:59PM -0800, Nick Desaulniers wrote:
> > Ah, I see.  Then I should update the script I add
> > (scripts/test_dwarf5_support.sh) to feature detect that bug, since
> > it's the latest of the bunch.  Also, should update my comment to note
> > that this requires binutils greater than 2.35.1 (which is what I have,
> > which fails, since the backport landed in ... what?!)  How was this
> > backported to 2.35
> > (https://sourceware.org/bugzilla/show_bug.cgi?id=27195#c12, Jan 26
> > 2021) when binutils-2_35_1 was tagged sept 19 2020?  Or will there be
> > a binutils 2.35.2 point release?
>
> AFAIK yes, soon.

Err...perhaps https://sourceware.org/bugzilla/show_bug.cgi?id=27195
was about `.file 0`, but it looks like `.file 1 "filename" md5
0x7a0b65214090b6693bd1dc24dd248245` without -gdwarf-5. Specifically
the md5 ... .

So https://sourceware.org/bugzilla/show_bug.cgi?id=25611 needs a rework perhaps?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnte8Ck1ywodbY7ED7U046j06C%2BD-ZcW6kS-fqyaJbmCQ%40mail.gmail.com.
