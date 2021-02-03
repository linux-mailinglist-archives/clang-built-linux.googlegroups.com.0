Return-Path: <clang-built-linux+bncBCVJB37EUYFBB4XG5SAAMGQEQ4P2CDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id F00D730E76E
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 00:36:19 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id r10sf729624ooh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 15:36:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612395378; cv=pass;
        d=google.com; s=arc-20160816;
        b=rtQhKV39UoF68RrBbDrjT+eNTZsNhdk0w1szf8LdQV8/4t9oEW+kZUUc7One5eANh/
         ZkG3IMfDmiR+wdv8C0dIFHje256ehyrJOlHqHmy7CuBPc7wcavElsTuUyw/zuqjYolk+
         w4cFi6A3iih4la4DAN5mnjza6mSJJWeft7a7K1uxXcIbY2B0ATJKpV1xVcPXI4sug279
         HCY0qDVLfJxUFXFMHpNvIStsEXML6OdCJH/Ogs1jI/XN1jVw/VWWHJPCorN0Kfub+Oiq
         6q6iXn1uDV48psalWAQ0mHJO9iiekhImNxxwPIBZ5cz4fsGucz0BcRF/6MpJKWJtTpg6
         c/kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=+2TJOmVCZZUIVRkmYK0LFSNR9d1Mj/wY0eGGwqChTQs=;
        b=mZc0RfVh+hfSQZu5Nt5fekKuDGZ2Yyx9x/+V3nl70qH3NpbODuaA452h0riE8wDVPL
         cdya1ZWrnzYhGQl4UN2vrv7duzIEas2kor9QMZ69igt4QD3debfLEem0tpdfKlUQM0dK
         8LXnnygw861k8uy8oAy1IZZO2IF20EwHbeNpWI/O2XZQp1qU8sCbOx/ZuITog5DIcJnR
         l8NFIUMPDqraMbXmsGlFoQ5IGAd6FsSQ23tUMYbarxEOh91BBIwP3iWbfOWI+ddrWv32
         Cu+xAXMuLuvBxWCI5Cb6Wya98Wl3TnzxEM8q/7lcHKWickZfviezVHKSQVrkQGzYvVR3
         /wig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bUrXOINk;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+2TJOmVCZZUIVRkmYK0LFSNR9d1Mj/wY0eGGwqChTQs=;
        b=q/iyRo5Pd67MQucjRfSTOluOk/he821qp90yjXwdnHHQKiBjxm1DhV/v82q5N5gMdA
         4cGBMKSNmJTbftQGyeexndorMmoZmag6npskZapt03tpQ9rdC7XxzbcszEUL6SA8HEm4
         y9MTJxlIT1GKhefY1CfJJG89Prku3N7fHstJlO+gAIm9Ab7jZ1iuCqppXfA/30WsZbT8
         +pxVuPGKnsnm7RKhEOtXgFV4NOl5Hfy1exBqFBtTCx1VoJxcTjwq1v2Ptfcc4vC+XYVz
         8Ihv5hzc/o8ygiCkm0/ONxKmd5uTWnSHGc+OYsi9jIhujyyT0WzlevtHNeYg5u0lOtIx
         CJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+2TJOmVCZZUIVRkmYK0LFSNR9d1Mj/wY0eGGwqChTQs=;
        b=i8D3H3BbNgMXwEo1Cb5SDzjtNZxHdzZcosNII+rfb2owwHyG7VmKF852fkvJDcPS0q
         +RexsbnIOaEgE1g0v7USAvXVzNq30/SGMguGoWJVdUHuvNZTa5TjjswZeIjJN/6rfOe5
         32GrlNPiWVBoLfZ0ei3Ltx96F8l02POaHVmiTXH8I6PlD+pTHOX87zXDmL/AaZn+ZPWS
         2t+35+qCbm07Vd6SM4HS2a4pf58KYMq/PX2WpETerBPMy9z0SFQkOOklhctgMPvwL11a
         hviZTG767PPgRAsn2IgtVcOtQYcgA+hXDQPwbXKM6cF8xKouInncd1l47o1tz9O9CNe2
         yMFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334sYSiXRt5pn09PZFIohrY1hM2daZPuk1EeIopvnYdOfZqKuMH
	aYr7Yj8HLnLuhqt1xJtg1Xo=
X-Google-Smtp-Source: ABdhPJzSzgr9NOeIRAoYnBhuzOFaDLLkbQWbw5+s8OIxywLtfAsUdHXF2WHDRaxjDs4ibk7k61qXWw==
X-Received: by 2002:a9d:426:: with SMTP id 35mr3726638otc.8.1612395378840;
        Wed, 03 Feb 2021 15:36:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1105:: with SMTP id 5ls928698oir.7.gmail; Wed, 03 Feb
 2021 15:36:18 -0800 (PST)
X-Received: by 2002:aca:b78a:: with SMTP id h132mr3724740oif.44.1612395378483;
        Wed, 03 Feb 2021 15:36:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612395378; cv=none;
        d=google.com; s=arc-20160816;
        b=VwaZwXlr3kDeDgrWH7l1llsZsCKwW4OzOKg5+jL3rTcU8JhhqDj9Om5NfF+BvhO+4N
         HZYdXiQuWAyUqT8vJudc/kNW8ISFaeAbUOdxUVLUqPa8afp6n1VhjshHh2U6IAxCh67r
         BJArXfRfk9s5djfGNPJ0w+RycOk9VsXVBUzB7W5WdYZ4xs0OsRc5Tm+CO4j8Eqc2ZJua
         mMU1N5jIrc97rNEebYNoZGbP+8pw2TKCc/pSUG/dMOkTAJtjnRPb5NYjUsnA0N2Bod4i
         bBifm+0d/zyBjHsoqL4w7weMBcCSj6HInfIF92mHEemSNiGXmCe1u00FSfbnD3jU3znV
         QCuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9K+vlsSgvaEXlEYmvQtufCl8VYLVay5BoB8zrikelTY=;
        b=LDK1Rhzqk65NUNs80WCEyNaHlYvxwMuF79NUigjCRE8JFbtch6p8zHsz0GKhCXB8cE
         5f0FBeX3TIJo0UNOIe5KnYyaB4ZCKQvpk9ZSRYb/8cMfIiuaHciE6MMxb5/v8UQbYnkb
         WDzbPeCz+gNCb1COpvDPz/JBKMdS5NAjxmfvE340OAMAOBOrRsInjbxhUu3Z2YGy4TZ4
         sBI6DK5kXVttgMyXT60icqRHcxFKrs9ZuLtFizmA85kgBieync+qHw1hKjEOThbT+5LE
         1+U4iZuK4ZzxP5yXzrZwvl8toJdKHUCtPLL4JmWMbYvJCL/KjYBCImEMFiyrzHspu4rQ
         +nSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bUrXOINk;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f197si394691oob.2.2021.02.03.15.36.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 15:36:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-453-s_UUVXGKORilm-3j6tKLsQ-1; Wed, 03 Feb 2021 18:36:16 -0500
X-MC-Unique: s_UUVXGKORilm-3j6tKLsQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 813D6183CD00;
	Wed,  3 Feb 2021 23:36:13 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-197.ams2.redhat.com [10.36.112.197])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 094025D9E8;
	Wed,  3 Feb 2021 23:36:12 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 113Na9ke4105253
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 4 Feb 2021 00:36:09 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 113Na7h84105252;
	Thu, 4 Feb 2021 00:36:07 +0100
Date: Thu, 4 Feb 2021 00:36:07 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>,
        Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>,
        Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
Message-ID: <20210203233607.GI4020736@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com>
 <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bUrXOINk;
       spf=pass (google.com: domain of jakub@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
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

On Thu, Feb 04, 2021 at 08:06:12AM +0900, Masahiro Yamada wrote:
> GCC never outputs '.file 0', which is why
> this test is only needed for Clang, correct?

No, GCC outputs .file 0 if it during configure time detected assembler that
supports it and doesn't have any of the known bugs related to it.
But that means kernel doesn't need to care because GCC already took care of
that.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203233607.GI4020736%40tucnak.
