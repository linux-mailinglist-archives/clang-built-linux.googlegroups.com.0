Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBQFR5H2QKGQEJNSYRDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 574071CEEBF
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 10:05:21 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id z5sf6515993wrt.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 01:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589270721; cv=pass;
        d=google.com; s=arc-20160816;
        b=uNmbd3avOm24cdsECvau/RDHo+F4n4LgsKpFSdkf0AwDOUOq6HUTfHMb67F2Ptc7Sk
         KFTR2touuUai/+iEV8jVbPTdsD1LJMj4lHY46HUrxpNLv0fU0DOV4qzmImQIpeoKCs19
         cmNjUXzwnz0wkOGhC4fPQg7DN6vZIk54DBJRVL15i3C7baVYohPzl+18isacYQmOMuqS
         SJ8jSpGrPFka8me/Lz6sTAlALBoqaJEqSL6zpFWmCtA0sVAEev8PjioLZUQOwZMt2/pi
         qvRehiVA0tARznBUue69YJ+ff/UxV6RUO/Fi3p5mzO1UxBLbgaQ5S0KgsCzBluQgmaZo
         dqMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=w6L+tnVsAlPjP01uDLPGQWPmwv8UWv19twrIeK5/R+A=;
        b=XEfbcNeAqVFy+vjofMQaoqqIKxGaX8tWvVbTybCZiaEdn64eijCnCv0n302/tB0VGn
         Q0l66YZBh4JoVLGUEW2I+EHLCtHpLOc7ZhTbvB49qStcVKV59NIV3TJDA78x2E2omzFI
         hs6UvK3ar7rn2Y7WmNHxwz22lAcZRySgzMYp1ShHejJaEFATjpm45geoKH6nwuwo/ofV
         +cVoUAtRV+65yUeGR5NQDym9lmVPG3dwrRkgm6xRiMG6o2TUQqUbttcPE9xKiblVNfUy
         itY7ybAwJ64YxyY9AOvLx9EnrFgLry90xS3hvySipD3/O6t1r4BGw7x7G22fTjzPjPPp
         XEdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w6L+tnVsAlPjP01uDLPGQWPmwv8UWv19twrIeK5/R+A=;
        b=Mn+mJR7L05qmJdWTDnJhEBlINs6iJNFuEnUk7YtMXd4MOzmvUlZXYGX0NbLvP78i5r
         cjmCQ8ghAj+0oV/w//5HbE6CFStf/hblSxbkjLM6LfE0VQ4kwQB9DQLhULCpnQWMHJUP
         QdcNkoFrtPcOnJqoEMYhhjhfcK5ZTT0mdZgD3TUy9Icq7Zvp3LwloPu8gsLhSqjyOd/h
         mhsbnvT/00sBwZVpUzeWvYDC3ImOr32Aj7znclvUqAAKLuBni7V/yRLqZK3/exZ+M6O4
         YzFHF+naxA2ftAn2mCpoSoulns5pvF3TekZeS8VPm1OT6fg2iUY1JIxF3DT1Se7Eyy0H
         x99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w6L+tnVsAlPjP01uDLPGQWPmwv8UWv19twrIeK5/R+A=;
        b=jhxSyacpZCT1GUTX5j58EZ38HMdTQ4cPTGQQRFKvqwz/gJwriNWKIEolJ+l7EV0KFl
         ve6pIEPCBppgU4bDbVz+W5U+tbuwFNEgim72LyHC+3SjByJ6C77eHmR0yGUBg2PT2/Wk
         69BPlz1D7HvPhZbWM9C/oxCyud4VQWq6ogpNH9sTLNYveklQt06KjHG0e0bYkQVvFtuv
         SHoxGpk5DjhBhO5VQn5wQ6VXDt/lpluxNLt4Xj2ER+PTF6ySjYDG2tj6oP8q3oRyPuMR
         J1BF710L0BFeYbMZUUVEMC5B665aefR90DxGz0s56wui0DPTniu4tqnh05hPaYJ0aAMa
         8xxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZGGUTwfHy3iNSWhbK6ouzyNq6IQ0Vw0HGfgDXARIQyCvhaoCiZ
	yaW+HjaCry+i84lp0vXuKjQ=
X-Google-Smtp-Source: APiQypLVxB0knX1IJXNM6dHekn2mxgujkVFusAfM3RR88MDMlwgZo+Osh0kLP9oX0FdREZFdTmyymw==
X-Received: by 2002:adf:a1cb:: with SMTP id v11mr25290684wrv.39.1589270721048;
        Tue, 12 May 2020 01:05:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7ec2:: with SMTP id z185ls1147035wmc.1.canary-gmail;
 Tue, 12 May 2020 01:05:20 -0700 (PDT)
X-Received: by 2002:a7b:c955:: with SMTP id i21mr38004303wml.25.1589270720567;
        Tue, 12 May 2020 01:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589270720; cv=none;
        d=google.com; s=arc-20160816;
        b=XMB2KixIrakPBSPr/VVIIYnaN+jPLvS7SQ1/6uDPATdYeB/30Hm+6wNV/IxcHReKEC
         He5mjmolKSg2vYcokesmWQsXEs5GEXsmiMKgGGAscxmpdfz8LX2pCvlliOHjQh6e1hmx
         SBrD9Aka2NbnFbYP1391m+X4Cqsgd7gmZqdar3FMmffq2zf/FqdXx0/vTkI65FJM2ZXo
         ci0I61PnvGy66WHt4Vgw2kG3wO32Do/NTEiMbxl2IWobT0LQD/M886K3T5++wZOagS3d
         gwaWvdXPL9YiDz/Rw5fm5XTNFqQ+XWf7Xgk7VdG5dDoQMWXpEu881J8XrxHJE1R2is6G
         uc4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HB7N8uHpKxRRqEcei0oVMXN+pr7t9gb2aJdLeFztbVw=;
        b=vJbWA120luQydOzYCokD7hn0QKitguJdhrYrAY0V/qb1izSPBp+jJLr0bLlZ2zEX9o
         zxomcFn9tagGrzC/6CmdFNX41hR3IbnypS3+B1BE19avECY/FPYdZN0AkIwfyC8ZUGut
         SUN1939fDO3oUDOz7KUCcGgsisebNgrrmg/4R56C3cAYbl8vg0Nz4pHJYubbqh+TtESD
         trepWLlu9T/gTpMqP8aVWI0CDyl7W/V0HuYD766y/JO3mnkXIQiIC/OSYy3yX1beVbCX
         yK7KqaRaCY7byKW+TEDq1fQvVXYxTFt3ehLgHpNA6n5GXdL/JidrS5XKvtv5yKKqc6pL
         r6dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id o136si1215164wme.0.2020.05.12.01.05.20
        for <clang-built-linux@googlegroups.com>;
        Tue, 12 May 2020 01:05:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jYPuh-0007gk-00; Tue, 12 May 2020 10:05:19 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id B6A7BC0479; Tue, 12 May 2020 10:05:09 +0200 (CEST)
Date: Tue, 12 May 2020 10:05:09 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v5 0/5] Allow ld.lld to link the MIPS VDSO
Message-ID: <20200512080509.GA9433@alpha.franken.de>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200428221419.2530697-1-natechancellor@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, Apr 28, 2020 at 03:14:14PM -0700, Nathan Chancellor wrote:
> [..]
> Please let me know if there are any issues!

I found no issues in my tests. Is this the final state ? If yes, I'm
going to apply it to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200512080509.GA9433%40alpha.franken.de.
