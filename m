Return-Path: <clang-built-linux+bncBD4LX4523YGBBZOAY7UQKGQEZYJMRDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 654AF6E7E8
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 17:23:18 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id j63sf14022461vkc.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 08:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563549797; cv=pass;
        d=google.com; s=arc-20160816;
        b=F24b5nOA/rsmn1D+eupCkHoz5FtTQvaqb3htHnm1ZqfgpRnLDjR4M4gw3S6+cJEOtg
         HScAuUxnGdy7mZgKDQ5siazJ0ya/3vkJg4+/Woc2/6P123oHFCSB/ZNT+k5a3F2XFYTD
         OkTUnjOHClvKoJSQR4YfeXX6RRkyTmdNYiFwJZEQKNYzIx2Y6bib1c1PJ0kpKri4bA9d
         Orh+XDIjvz7OkLbBi5JAumBvfnj24LPdhbRoEBqRZdfjghBo6ymN/fuEpw4ddsdSrKuP
         FHp6Pli8i8PU0g6ljHNZ5v+nK/rdN1yuvA0e7rrFzjRlxapm+V8BNVZdhehE6xjShL0H
         xfGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Zw5szrZ7bqqNDQ3mWRBw67ih2dQna+uifpUg1SSTtzE=;
        b=MROVnDla7hMLTHyMS8/xqMImISgtqNYih80FxX3/u+s1TnrpPr+ic+aASCFRsPRcr6
         1OZLKFqE3ajgJvB4n6hg15a6UwYo6clgxnVwmziqp3HgK1GwtKTHfw1Lrtm9LGtTjfg0
         uvjGv4EL5Uq1Iq8XIOYvqLiC+GVvFSsWatS0XfRgev+MTBIiRnN+Ker9EUuhxuBjHzeN
         ZnBIGKNTWCiAg9H94legmlTbCtc5hlQ+XxB+RS5YXVR/AM/Vzng6R6YMbZ3L/M4RQju3
         OCPeaxpPEwJVkIGIVDL1cFPiQRykuTY6PrQdoQKNUbUMerwmJ63cIceZXts6BO1DNC85
         WI6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zw5szrZ7bqqNDQ3mWRBw67ih2dQna+uifpUg1SSTtzE=;
        b=RYDZ6kBRvoN31cFGyxf0gJ8it6xMHrjyXLkwhd8JcxZjop8mhti+Rux9BgdIQO7fhD
         hErJtVT7HjTEKEOsrICFMYPu24vITjouJA911eyqrouI+x6bSLPsPoX8uFqeRL1sgpNb
         k+kb2BRNBbeWctwtAqUDDA2ngiUYMWPIXjd5GZaMRB9W4+irz/aGM0YeeVrP0gf5ptBe
         MsyPNxItfxM7eGu/p/IPukxuEDJKIcH5UWYCZ5PitNfHohOulG6AVTTSkh65sJ8aqk0+
         kvIo3KMehq/9DKF9kI/IJuGd7FcbMxRCTQFaPO4cl6aSFoMYA9VjuSKU2mNNy5aYupSf
         Vnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zw5szrZ7bqqNDQ3mWRBw67ih2dQna+uifpUg1SSTtzE=;
        b=jyYx6GT+HJ2Ud6KNA52KF8Kgu3lkNQHrqqgxmGkKvYo3QyWg9UEq+58gYN550mVR++
         oKX1WPliSNzZn7dlgs+uVK24UPU18YGA2hkeGS41fZuCptbTDlU4QbRkG5x+GsYfdVQD
         M+qjW+z6bIF8fhkwcVcT2sy4VPJCtQcMRjpv1DM+hQoeibqU7mzm1irGRrqYhBN0R2N/
         I9OfQFpTm12OvVh8g9xUt7YH1OS92D+tRLCHgcfojjVQ/POT8gD5bEVKnN8PE90uQNxD
         JsB+YKbNgiXcCVxxLiQn4uHNBFLhfnRIRCOkdko0LhVGPeVQ1UMxLXZyvZy797G49HG+
         iemA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXzRQBk4LYzK84XPOL7vZ2x6PWBn+iXYcFhP0LTiew9WKgxSHbk
	gLxQiIjt3VKmODluUhp3oZw=
X-Google-Smtp-Source: APXvYqwMQW9/mnC9h5n4NIBwAEnBzEklfac4HykBCZRoulPhBHrI3DsYOu5lIcXj1QsCeq+eHymNxw==
X-Received: by 2002:a1f:6d85:: with SMTP id i127mr20991335vkc.7.1563549797124;
        Fri, 19 Jul 2019 08:23:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d4e:: with SMTP id y75ls4016949vsc.2.gmail; Fri, 19 Jul
 2019 08:23:16 -0700 (PDT)
X-Received: by 2002:a67:af09:: with SMTP id v9mr1540685vsl.129.1563549796883;
        Fri, 19 Jul 2019 08:23:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563549796; cv=none;
        d=google.com; s=arc-20160816;
        b=MnABsyJZacFsZbvBiFf/ZFO/WViBzo/GIyMXo7DyEyBoM0VNC6cl6OFejP3LGR5r0Z
         u5pAA6Xx6KQQO2K8hHZiujtERKfALEegiWgwtDPnAL1EScHqssb5iVPsBePVcdgmB1cF
         CdONeT64fIzQYmGbyzuf8PGWd5e8kPs2Gle8SnQKlHRHONPnQqvVfzRZq7VAruY4E4FK
         tz0+z2wFb7GII7Zf6YDGK9u8+J6G9JdwTBz08SL5Ww7rjndOpvQBNyAjwIwhI/9e+TdB
         0ClSW2Gyw/RxxEynPhBC4ZlGIfyu+LqYkQRJOdJ5z4E+6XOFYGauZ+av6jPViaioR5nS
         u8Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pCZ8DR2DQ083nJLI21sPkv5KRO9eoBXxdCtJuR2wEUE=;
        b=zpX7Zqwtg6bDGfOflofTnLKlQCzsGrueuOprKsJxG6rVseaepr/H9nbnRy7DXjwx9t
         DYwfZLrlRCxzbT6ypekVa9F1wrILuNMPY3VOFSshyc21Ef38d88SYAYVNn+yNq1lJxQe
         mFZXlvHoKXlUSq41oZOIn80/w4cbV6kT49RV2RukTRPheZu85GNtPu4p7uTPQt3yU26H
         Hpz1WGOc0XTXnkkjJ9AzaapBchIuU8x5gXp/qk4gQVa+OrJMkxquioF90eZq9gOmx357
         S/QcbGu0Gm2s3CChPCuQjsis7VHvYRpBeWQTujx56e+IZLYmb86xjsPoemqFyV0U1zeV
         UJjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id z67si1283481vsb.1.2019.07.19.08.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 19 Jul 2019 08:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6JFN5qY026512;
	Fri, 19 Jul 2019 10:23:05 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6JFN4GP026509;
	Fri, 19 Jul 2019 10:23:04 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 19 Jul 2019 10:23:03 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190719152303.GA20882@gate.crashing.org>
References: <c6ff2faba7fbb56a7f5b5f08cd3453f89fc0aaf4.1557480165.git.christophe.leroy@c-s.fr> <45hnfp6SlLz9sP0@ozlabs.org> <20190708191416.GA21442@archlinux-threadripper> <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190719032456.GA14108@archlinux-threadripper>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Thu, Jul 18, 2019 at 08:24:56PM -0700, Nathan Chancellor wrote:
> On Mon, Jul 08, 2019 at 11:49:52PM -0700, Nathan Chancellor wrote:
> > On Tue, Jul 09, 2019 at 07:04:43AM +0200, Christophe Leroy wrote:
> > > Is that a Clang bug ?
> > 
> > No idea, it happens with clang-8 and clang-9 though (pretty sure there
> > were fixes for PowerPC in clang-8 so something before it probably won't
> > work but I haven't tried).
> > 
> > > 
> > > Do you have a disassembly of the code both with and without this patch in
> > > order to compare ?
> > 
> > I can give you whatever disassembly you want (or I can upload the raw
> > files if that is easier).
> 
> What disassembly/files did you need to start taking a look at this? I
> can upload/send whatever you need.

A before and after of *only this patch*.  And then look at what changed;
it maybe be obvious what is the problem to you, as well, so look at it
yourself first?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719152303.GA20882%40gate.crashing.org.
