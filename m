Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBWHIZ72QKGQEJQXLM6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6671C8896
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 13:43:21 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id ay22sf2176410edb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 04:43:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588851801; cv=pass;
        d=google.com; s=arc-20160816;
        b=rWwjgYzb/5Bq7N9MRVi3/84t+LE+xr+juB27j0KoHk5L6w7Rj7WaBav8CE9zNvG/PL
         XU2fjDksW+AfRsOnVZ3oCRBpd2louSqr7xY/uRZvwDVYfFWuKMArRUS+36G8r1NcJ4uH
         tOM0QF4rmgWsQtyj37X1WFiNSMB5f7jaVcAQv0w/cXLZKhfw2/9M6x2styuv6qr3sOCH
         7owUDq53/VCE8mevPuCgP99wq4nuMKX3vI2zfxvsIRSdeWBs9+4je0TRyOFKyTtZ/lEW
         yF2UWjzD8GLqzWRjroSYhSr9GYg4XsqJBuIATXsvtODAr0WF2GN2qOofpS7QLW6RNXe1
         rW9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KbZ9IFaBqHvOTmFLhHyI6qy+asDjbXTJYh5K22wHF2A=;
        b=g3SG7ZPtnb+KOIIyqG/WrNa3e6sJ2Hx+yUYyKAeaBZ46moAeSmbX7mxwc8q+OAZBse
         r1bjrl9MTc0ajrDYhVxdYzaqfuaIaH5ASQShH67VX7VbFlKOMFjMQLWwxqieJ22itodj
         Xr+giWtiPTadAzYWDNvRJi6BTadJF7oC1hvH9b18d/LvNKUPzo9kASd/CueLWKEw0Ysw
         seO8d2uLjcXhBXNsNKYHHIwL9vvs30T5fgDEPRv22o2GHjeyr0MQL6/CiPZsMTBLp6NU
         aecFUI8CTHi08/CkVl+I12Pu/H3wmP/3kTUKiwKlORtwI4Eu/UDmyThGnv3/Vv7A2dcJ
         fRAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KbZ9IFaBqHvOTmFLhHyI6qy+asDjbXTJYh5K22wHF2A=;
        b=LvSTJw24i9wkxl7syJT86m31RHxZvmpQcMJV/ih+s5gTN3Sx6W2VdndreR9xRMGogP
         wIbKOilLzC8DpKVreOAPIBqEYN0UA8YJJNea33jviv0kBODxnj14cfJPbuPw0Su8u+sX
         BZapdsKElOJNc9UgQjifQLM8O3ll/hvUJovjx0UeDSJYIMZam2cR+tAMhOneeT5mWQak
         TwMmqM9LipfG92HsHRDHPiuFiBLvifPH3XlyyJrF/LQ0hyoI1je9nlrFHX0v11oEGjkg
         6aW1q1G0HcZZpiWYCXkXowbVkMB67nEHXuUpJIGrCqvaGMDexWXpdDaw7GiBnndgbE6I
         0Nkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KbZ9IFaBqHvOTmFLhHyI6qy+asDjbXTJYh5K22wHF2A=;
        b=a5pRvaFF6S9Hi+c6pfEpzn4AMlGkr285uTNxY0c2052Fjkss5clBCb1IjsA7whp7lL
         QDc9lDbqkWXxJd/KFi0aOhWzhhNLH8ea0IN6zB+oTT0GzVq506cpIkzXXhqP8G5bI795
         65tv7R3ooCO3GIeoAwjofUSuvCSDOL6+l2EOK/3k8OSmVIZM19e9blVzLonkRDuz5RkM
         NhYObVPKhsJCl3Ks1uwdKpxcPShs0qh3mbpaevZcV8QqeYrOGpoiOaXd+KaapzK19Bgh
         QQ7czL/V4vubXhMsV70hC+JdMUVLy9uIIWrwRS8BksM6J4cMEJw1K4bV1xQiMtSevAkA
         sxcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubEJZ/Y/YJ+6o0zin3pRJrRmQoLPKqWf7gilTUKWAxwl6HCxXag
	3+DlzkQbmAOwxs1w0Em8vdQ=
X-Google-Smtp-Source: APiQypJpU9KGCAQ2Gp0rMb6W5l6coMNqcoXk5NRdhd33Q1SfTNRkDz41bCqLwR2t1tlhr/4n1JmlGg==
X-Received: by 2002:a50:dac4:: with SMTP id s4mr5073324edj.277.1588851800992;
        Thu, 07 May 2020 04:43:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d83:: with SMTP id dk3ls1013181edb.9.gmail; Thu,
 07 May 2020 04:43:20 -0700 (PDT)
X-Received: by 2002:aa7:c306:: with SMTP id l6mr11691030edq.356.1588851800541;
        Thu, 07 May 2020 04:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588851800; cv=none;
        d=google.com; s=arc-20160816;
        b=M4zGJaYUecAQ5VM5Xi5Ytl+Kd/gt7ExHJh9cch7djCtPwvFeOgA01PqNIKPul3wa0h
         EyXgnJJXplU+UXutmALB3H60iLOV7+q2/lRqKCJD9XKykoe4PDdSb/FXo71rllx5N5kz
         1/rlcrevmxdq3wzamV7VauvjD6qyFzziOxtvhRx5zsUZssGTvoygB8EldKbNRw2I3NjU
         S5PLOv7z03atwzEBrfVrKgzmFlUlV5aF0U6nhMlewkKyFlszu0CWjbhsj8Lm+32KS6z5
         CH01m1YpBjwpnXi3MLwutGDZgiUZPYaO3Rp6T4RWeWVAHNyKRhX8N+xOgYpa0TYQV0mP
         S13w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=etGdNZFrtC8Ypk1skgddf+CseNo/zmOlKMjtfIvIBTI=;
        b=cbVnzSBpUhJoYNePLhjtg1qsmwTC4ewNAxXr4X6m3BEki1go1vPbY02T6uZmQzhfgF
         oj6rTkQiavGyHsydvfCooTpPMqQNEowfeZ2ksPoaGODjC/lhxZAcXrP+sU+gDdpTv31s
         xZl4anUcwfSQ+F3NKjUU8sdtWjpZ5RIoxjnePwZKTu64R0ruHncRvO2Tl3PCjGr31n8X
         tMqhSjFpBTz5LqE1Wy0FVuDy1pEFvMliFDS7zJCpvvi9fpfeuoe0roLSM8INb2jFsurS
         wwpNMQpq2/0ghJCpGAjGQhyxfPUs+lBhCvlGghIyl2NV5dRVySQ4RNUXcM4rHO0bbvOO
         A8Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id v18si260525eju.1.2020.05.07.04.43.20
        for <clang-built-linux@googlegroups.com>;
        Thu, 07 May 2020 04:43:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jWevq-00081e-02; Thu, 07 May 2020 13:43:14 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 95D7EC0409; Thu,  7 May 2020 13:00:36 +0200 (CEST)
Date: Thu, 7 May 2020 13:00:36 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
	"Maciej W . Rozycki" <macro@linux-mips.org>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paulburton@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jouni Hogander <jouni.hogander@unikie.com>,
	Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
	Borislav Petkov <bp@suse.de>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: your mail
Message-ID: <20200507110036.GC11616@alpha.franken.de>
References: <20200506055245.3013374-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200506055245.3013374-1-jiaxun.yang@flygoat.com>
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

On Wed, May 06, 2020 at 01:52:45PM +0800, Jiaxun Yang wrote:
> Subject: [PATCH v6] MIPS: Truncate link address into 32bit for 32bit kernel
> In-Reply-To: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
> 
> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/786
> Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Maciej W. Rozycki <macro@linux-mips.org>
> ---
> V2: Take MaskRay's shell magic.
> 
> V3: After spent an hour on dealing with special character issue in
> Makefile, I gave up to do shell hacks and write a util in C instead.
> Thanks Maciej for pointing out Makefile variable problem.
> 
> v4: Finally we managed to find a Makefile method to do it properly
> thanks to Kees. As it's too far from the initial version, I removed
> Review & Test tag from Nick and Fangrui and Cc instead.
> 
> v5: Care vmlinuz as well.
> 
> v6: Rename to LIKER_LOAD_ADDRESS 
> ---
>  arch/mips/Makefile                 | 13 ++++++++++++-
>  arch/mips/boot/compressed/Makefile |  2 +-
>  arch/mips/kernel/vmlinux.lds.S     |  2 +-
>  3 files changed, 14 insertions(+), 3 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507110036.GC11616%40alpha.franken.de.
