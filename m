Return-Path: <clang-built-linux+bncBCVJB37EUYFBBO4P2KAAMGQESFKRXRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E16308FCF
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:10:04 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id l2sf7366121pgi.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:10:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611958203; cv=pass;
        d=google.com; s=arc-20160816;
        b=lWQLK8mtstVGKKo794MMEdpYPhuVfeI9D+VnV/sgDP4PzszaUGm8sQj/j6gPq98qAn
         wyzQRIMoD2eIw+hLezn3TVIN5E0CYRWUglU5RfJb160UPtn1VagO0Mvmm3QlpXAtGuei
         l+U+CFhg/brA8xklyM6XwXNeQYQknmXRbHJ2xYPfFVgVuxsNn1o3qZnV9+xlYL3iuETL
         mAeVKqxxkUEwU6AeGKBQU61MPQXALWhO5bgdRWNATGGMVExrjWgHZOpdO97cxm80+IG9
         2yz5RswHMLWgCUQWZYB48KnuLb8pBDVw6jaJYB1+vZGeTuKCn3WTmyrdHDnshXu30ZM0
         z7BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=NkPzL1YCIA6f8kFJpPXOKJywhh3yUzaD0nIaRgJ1Rfw=;
        b=GhJKwnILRzz6NZ/aHYVmEriZCZrghWgFawWHDoQV+YCQ+Cy+l5Csuttd2wFSbqQFbJ
         Hyr3NNpzaAN8AxiXRiF67HXIeSWlSNNLFvgsdMW7BFcR9UDLViUWL1/0m/BgjXW0ju2P
         +LVnvGlucqF3PvJ0RXfGRAytZpQp8SS8ferYbHAL54c+otJrpUI7ZSbYUi8G1Tu7qh0m
         yJPc1R7GChpRDP/8BtP3oqNUqKcv2Rs1zb4puLNQqqbkIJYZRR6P9t06066+w3nVFPGj
         +NrIROXT+xFLjWeuu65Zbsa8Caf/y3fl1WvjroGaJypvNCeP6aOorFve65SjDbvHCa/i
         AoNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="YsF3RV6/";
       spf=pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NkPzL1YCIA6f8kFJpPXOKJywhh3yUzaD0nIaRgJ1Rfw=;
        b=Of8YumGlkEIagB6SIIWpEMTCHcUQlDdpcvNVxx1c1zJNCU1HE184lUtFBuZTDqrZdl
         8Ng9RIsZskuN9AHKExN6gBcr2nMQ6FS98fJvFZv55DRnZtp/jv4jr0l3vneUfJq9OWtg
         O9zRfNxge28sk8SmTWyfA7/sEw3K4A0gSzVPHaOnCqVpUkHOLl9XFp3O4XkyqZQKNASQ
         FBgLQUiaUm4KwhTk3iYymqeNx3VUhOAcyp/vLZ5uY2S8vP8dZ1MCecjUlWMneXIM/j8f
         HRgzj/UIs3UrKAPO9eFH0JkX90eEDVsFgKN8uol4x56rD5tS6mJolP2m6AeoaBTc/BRa
         ec+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NkPzL1YCIA6f8kFJpPXOKJywhh3yUzaD0nIaRgJ1Rfw=;
        b=BFwWzYaFjKvI8sYmNL1euyTyjXnt/r+i+JeOxpxbfxMx1GSFGzIeglYvOIR4mcV5Jv
         xuiGrtDuVD8vwWtYG8pT38bM+PaI3YCxN4BBFWP7chJ48Pm3wTDBE81smk/CEwpllZlb
         H66vxmoxq9bazM6kWj5EnTO0AMaGCZ14jMSxzxBntFf9VeEzxH7FuOz7MfBDnC1g7IL9
         MrRVNvDwthuASzbbZ6fbIM/xD8jE+61Ppk/z48SGqJr8G0X+Jip0RkYN3OK+7TkSKk8e
         t+Y3TrNu8yE9yYqwx5wdsK30H0ZZY0BxEYBZYd0hW7ynn2G611rOT+fpRums7Kh+u8mj
         1jHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NePBCw2lwZY80+bTnSIOeDuo7D+TNzxMocZdbKJEoqinKTEIJ
	lruJPUyEye8FTpQgF3sqEVA=
X-Google-Smtp-Source: ABdhPJx+Ee7HS84qVg4sMdJTqHIMXWG5H6UCGRqdleWZ4gpvPT5Kqy4ZA669P5CmK4w60FCIQfY61A==
X-Received: by 2002:a63:e906:: with SMTP id i6mr6568000pgh.350.1611958203223;
        Fri, 29 Jan 2021 14:10:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c1:: with SMTP id e1ls5004830plh.10.gmail; Fri, 29
 Jan 2021 14:10:02 -0800 (PST)
X-Received: by 2002:a17:902:9d8b:b029:df:fab3:48ef with SMTP id c11-20020a1709029d8bb02900dffab348efmr6288297plq.79.1611958202537;
        Fri, 29 Jan 2021 14:10:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611958202; cv=none;
        d=google.com; s=arc-20160816;
        b=LwXNqFdSkHcUi61GZ3gtuAVP/2bIdDD802+ScSOj8aKPSij9bxtx5OP2ZDhsypUdPJ
         BE8MRjw5xmqNGYpcLgyMlJtPP2dKtYb/odVZZP0s2RUQIDaayt3SVV8lDf80f1r2EbWE
         MyleO9Dcj6ZtXZPcd2T3OdlR8rDS7SOZ0W92AYutPzWmEbRpDHoPfUfW9mqzTydZq5rF
         le/qi0rkd8Ls13AiXkNtT2nl4R7W9aCMgrhOnVXQpv+jxBVHCSUhyOmSmY9bhIuy2Y7u
         yDbNyTitjRU2iJWlF1x6dy6M2oXhnIqJQVMycUih44lAY9x+nJDNjs6SA5qpLmj5mTgO
         8uPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EmteIPPCRvA0Xzynl4Lpo4s2j4RCjrk806zB4G2tFZU=;
        b=kn51E89/2wsRraU6X00OcjbpB/tlvrrLp5hb3zlT60/S1lYN1mCE8Ex/AZa3XnhhaO
         iOjbAJjUBJnEj3Cz2A43LcIj7Y+cdr0EPGg8mtxAxA6yjMNEqT9sYIC5pXkuhLbF66nk
         YYtRX2vgAYly7n6Xm5hF9b6fFOtH+ugDGfOitaprPmOmqOmVs1HV8a/57FadmslTnlfL
         9LJId6iA4/Eb5wbcs4OJZUZRbigCwzNgHuf8dgTIx+vpvymA7j3FeNxDRbzayUhOMOhE
         cEkSLmgJ2Q+/qKPzuMI2CTDUgJHF5zJD6yGPwEnkENJDEOKPYLUn+2uJtxUNhMAIj1Sz
         OPiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="YsF3RV6/";
       spf=pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id n13si519725pfd.1.2021.01.29.14.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:10:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-a8cnRl7KP9u0P2t_e4T3Xw-1; Fri, 29 Jan 2021 17:09:57 -0500
X-MC-Unique: a8cnRl7KP9u0P2t_e4T3Xw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E949802B45;
	Fri, 29 Jan 2021 22:09:55 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-64.ams2.redhat.com [10.36.112.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD1D71A266;
	Fri, 29 Jan 2021 22:09:54 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 10TM9pe92192088
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 29 Jan 2021 23:09:51 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 10TM9def2179650;
	Fri, 29 Jan 2021 23:09:39 +0100
Date: Fri, 29 Jan 2021 23:09:39 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nick Clifton <nickc@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
Message-ID: <20210129220939.GY4020736@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com>
 <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <20210129205702.GS4020736@tucnak>
 <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
 <20210129211102.GT4020736@tucnak>
 <CAKwvOdm-+xK=diSKKXXnS2m1+W6QZ70c7cRKTbtVF=dWi1_8_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm-+xK=diSKKXXnS2m1+W6QZ70c7cRKTbtVF=dWi1_8_w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="YsF3RV6/";
       spf=pass (google.com: domain of jakub@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Jan 29, 2021 at 02:05:59PM -0800, Nick Desaulniers wrote:
> Ah, I see.  Then I should update the script I add
> (scripts/test_dwarf5_support.sh) to feature detect that bug, since
> it's the latest of the bunch.  Also, should update my comment to note
> that this requires binutils greater than 2.35.1 (which is what I have,
> which fails, since the backport landed in ... what?!)  How was this
> backported to 2.35
> (https://sourceware.org/bugzilla/show_bug.cgi?id=27195#c12, Jan 26
> 2021) when binutils-2_35_1 was tagged sept 19 2020?  Or will there be
> a binutils 2.35.2 point release?

AFAIK yes, soon.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129220939.GY4020736%40tucnak.
