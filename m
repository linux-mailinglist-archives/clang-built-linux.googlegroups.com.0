Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBX7WYX2QKGQEBYDANAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1799A1C59DA
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:42:40 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id v21sf1037054edq.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:42:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588689759; cv=pass;
        d=google.com; s=arc-20160816;
        b=q4i9GN78IQ1hAMvSykq2hHVEmMaz3teLoiolEfGPrBh73ZrCB5RT9F5w9xFDIH5ba5
         pW5E20w5T0Xs9uHvvOf50QXyOpIenUDy9w78Q36bUJWdrLgDZtRXSbOxz6K4zpUNXSiu
         lKnrjrJrrocQXLwuFuSXaTQBTU1On78ufAEFMxoe9DvsHgSwn3T8qs9rWHPwVRzfS5Xb
         mwu7gIaU6YAfKw+uYaocJgPCg+x8gOTG8RwxgK5/KMOyXLxSp/Nnn8SwcA+yCaM1gJUj
         ACPbpCy5n7AYCGbcccMVXv/rIx/SFLqvFKmcd0knfKUCHrU0qeW/Lf99+a+xegi4NsxP
         6Y2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4kEMgznfmYjzO0N0AQjt2SwKE2ysxJF+syH346gIVTk=;
        b=TZpUBF5CPfbjbYluDc2ezMNpiVEuxjCjG/7Q4vp+9weqc6D03vwvVc1I3DqHj44a+z
         yVq6+ORd1SAN/8CEVoHKyEkZymaC6BUR779aaCy0N9eOg0SB6O33SyogyXTH8bwfWmRc
         j+VBIjnHYh889hs1JGMeqWQ5FKRw1+prqz33ge0kErPmo71cZJlX26QLHj5+4Op4rgWa
         6JTYlHDidm6zBrk0HNATDUpHVZbOM7pI9lJKNu4fHOqHb4Nyo6LktYS1ulyTcB5O5If+
         Kk7Fziw0SnATLHzjS/rElyWkvaii5HuP+uN8R3O8RTfi0YIFZv5/LjSReLi5pyCCB+vz
         8RyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4kEMgznfmYjzO0N0AQjt2SwKE2ysxJF+syH346gIVTk=;
        b=JiAz3khtoyWGSXcPzNcoYHIUFX/P+/5ACqqALa0eW8XSx3LzXEnn26aoxy8A7stGFl
         G+juL3ky5wYpWh732FDsHnTT2RoKomHt9rH2+Py0t442/OUr+avV4WeyceKQLY8OA0yC
         8L1x0PyhJJA6kzIMGZqY9Xnbl4UIYtPeyYA4GjRoP4T4u8pzKOxmTNIi0y71jtkE1JWg
         ImDssN1S0GLsqkEnt94K8sprRwWPZDfmW60zuUrM6p43f/IeV7JCgvyUF/Dq81OFeHBw
         qY51sihIpaIxyVLJp7o0k6A/AJJADZl3VF7LauCb1MgrqbTQ7l300ZLlzy3iTUJSXgkV
         nwSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4kEMgznfmYjzO0N0AQjt2SwKE2ysxJF+syH346gIVTk=;
        b=aTrk0LKEKOTNPs/I26ug0Uqi3RiDT3uOCdEjPwW5Ka7/J+Ga8V29YghLzsoeXWn1CY
         aZtg5Of4HUF+w4YbE+augDIZqGS1kJSdX2EhYF0jqYfgHIUkNeDf6UPNZd33xl0H43Sw
         +O8Mx6UrnQXivTVCv0cAcQekbUoHijjBkg3+ULQ2NtF1yFTlKvORkLVtS3/Xyp5kMcXw
         A3pk2nuz5kzPvZPbJ9vvJ+gmYrdtFbfONDdYI9297Px4ZA4RrMD3v22m1We1iRRgoqyY
         do1GOXAUi/2BrUcZy1hA5s+93OBtw2tlBvwXMOHKDo7C4vFUBc05B30t0PlLAyk5vhvQ
         5qhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubtYXppUoCperKyo/91dKifsHeLOTSsvfMjTOYWzRTK0TPnVvJT
	LI0cY92ntE8ohAkmlb/xPIY=
X-Google-Smtp-Source: APiQypKAVp4FfiV9ghYtQcmlVfSOEzBNrgole3Tz0G82j8NKfKLnSQnTzxBlB33nf58B8i/6lYXssQ==
X-Received: by 2002:a17:906:31da:: with SMTP id f26mr2920118ejf.308.1588689759810;
        Tue, 05 May 2020 07:42:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ee14:: with SMTP id g20ls1328395eds.10.gmail; Tue, 05
 May 2020 07:42:39 -0700 (PDT)
X-Received: by 2002:aa7:d892:: with SMTP id u18mr2997052edq.156.1588689759149;
        Tue, 05 May 2020 07:42:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588689759; cv=none;
        d=google.com; s=arc-20160816;
        b=zuxUO5+hfBEzPgnIPZATnFiFsKTXr+O+0b6CVvJLi6UwUnSgu8FX9cO3lslmOLohze
         26bFunRYgAGo1aQfhIi6AtFMSOVyZOF1CWhgTxiJzdj9g6KB5FMDuFVGyWwOUQESaxTy
         nQT6IOYOPjJCCtJjd3e8fdFBrh/z09f4c0NWCWzv5KSMUuK+MJTBzwRRPLeos9PV/DJO
         sLDfvN/u9vFG5A+d6ZUzU7uPvlkt3aWdogcNmk8vmDmmML2WSF03qK0MybR9wjdW6xl/
         59qRgfDu2YtfllqjX4r8Abmy8oFRE+YQdTy2PUrIHyCQt6DNZM2iegi3uyVTnjOTMnGw
         m6Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=kEpCFBBrN1RC3DYnPv+phBRPd+qMBV8l0mEYrDkWYCk=;
        b=ghQZDQAZDEmuMzwHONsqqoXE/BkAPK6zB/K0pAT3TFLcgAHe8vipVGJJ8sbJJcERs7
         aPscH6kjx03fqw37KTafH08+Sz7ODKZ3/+wXfdDJ6lrvoHihZogAtKXQ4yFSDI2HSaac
         Z31LtV+m8AkOB6L5jthYLvu2OFVt9t7uvJrDuYGjlNkiaTqahsr0xd4nrTYOki9Jg/kh
         n72S0bfp/19qALBKV4rZ5X6b7WD0r88EV7GlZhYb1+2ii/r2EszwcuCV6Fkfl8APX7RV
         w0nwZPluE0vn55xb9V9IoRpYl+xDjJgR1fAbP541mNCSC28AgZzDQdoCXPzJVW9ZwExs
         Kf7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id f24si93473edw.3.2020.05.05.07.42.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:42:39 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MtPzy-1jIID21qOs-00urgf for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 16:42:38 +0200
Received: by mail-qt1-f182.google.com with SMTP id l18so2130767qtp.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 07:42:38 -0700 (PDT)
X-Received: by 2002:ac8:12c2:: with SMTP id b2mr3012949qtj.7.1588689757275;
 Tue, 05 May 2020 07:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141218.684079-1-arnd@arndb.de> <20200505141908.GH1551@shell.armlinux.org.uk>
In-Reply-To: <20200505141908.GH1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 16:42:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1c1+7GyAzocpWqUMo7=oN48WAdDfPZtnEBHQXpmd7pOw@mail.gmail.com>
Message-ID: <CAK8P3a1c1+7GyAzocpWqUMo7=oN48WAdDfPZtnEBHQXpmd7pOw@mail.gmail.com>
Subject: Re: [PATCH] ARM: use ARM unwinder for gcov
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Nathan Huckleberry <nhuck15@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:iVMShzrJ9DH2ayNKMYQ4BXyFRm8o+KJzo/lFBlA84AH+nJw431H
 EP0amo0jKfW1WiFRIDnVptgadI6uG9T9N2ZScr51F3Q+ahz3g5ZzdtFFssOECoxDXXkx0Th
 cqC1GqgUh2WOBRzkUwVx0yuPdrpza8q8d27El+BSabCvcOOccgON5vzFwkoTsIbScRQ7+Y8
 qdxqnNWHPmwddPV5qnoZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rUOUmDGsBKY=:3BRRxcS6nhyMyP8rVZwkPK
 VOhvz3s34uKYwg9/ibspL6WxcmXWFdXfWnDFhwyZYWckHLck/gjaU+HgfWSHHvgWwgpJwwuzH
 Y/kMhQHaY1efMPLfIpKbuUy75hiR/OqIFafPB8k177AN/Obr5mcG50VaJ14V61twQ5+ze8OAW
 CNrD6Iwll4MxStQZBqTvotaI4AMW9z7SacGsRe3AzDoH6PvYrHYa9/272CLq5vSztRvyL8uQ9
 8ZOLDPg7L5v4TdzTgWRe/nZBYf4ceZFO0hqsKf/S9SVshXeY6DVs+lACoiNi6danIisQRD2zl
 OCpLkZNnlSmNCYs4mX+hPxIFBj9U2LxW2DV+prlgqSGnvA26DFYsnsR37SoHPAFjH0je4D2mC
 d5Soo9TlXycjcyi1wxxSgdknNTTudMllW+vvVFgvRwfbHYUixYkYl6y9MolTsdb+47yRyT1SW
 xJM4OYVhoZJZwcMXFVNUpvQMMVZ87VV/JiYSrG+UFSU7e3BNy4HSvLyetfPhHMPi92Fw/SBSV
 r190fbHZWzU9eSA7TvJhE5ejokgkQDRGi33UutEYd7ussTBw2rB7Q4Ckyen0Biw3d6/Dsz1E/
 De2xTeG8zEpM80ZNfK2Ao5wrKQBkmEAd38LNIxMxPOA9YU+6a9bZ0X6XJ3er/AkcrS8XGIcL/
 39oNvg+oJ9QqdizDqSyXnk/+ol89b27g2yOCmwxaxB5X6/6t60XEdY7pVCVaeLJUWG3Wy3Azb
 4a5ouKN5NHoVjTBq6Wdj6YHWH8GS28fhLvSlASILSUXEDhC9pz1fU+82iF7ZU8mJO9UxAUyAL
 YVVqvJT0Wm8xTBapz7DGA45fUDBsEQCpiI+xgkzXqtk6pyk9Eg=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 5, 2020 at 4:19 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, May 05, 2020 at 04:11:56PM +0200, Arnd Bergmann wrote:
> > Using gcov on ARM fails when the frame pointer unwinder is used:
> >
> > arm-linux-gnueabi-ld: kernel/softirq.o:(.ARM.exidx+0x120): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/main.o:(.ARM.exidx+0x98): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/version.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/do_mounts.o:(.ARM.exidx+0x28): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/do_mounts_initrd.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/initramfs.o:(.ARM.exidx+0x8): more undefined references to `__aeabi_unwind_cpp_pr0' follow
> >
> > This is likely a bug in clang that should be fixed in the compiler.
> > Forcing the use of the ARM unwinder in this configuration however
> > works around the problem.
>
> Or should the stub functions in arch/arm/kernel/unwind.c be moved out?

I had not realized this is only a stub. Moving them out should fix the
link failure, I can
send a patch after testing if we are sure that calling them is not a
bug in clang
that would lead to runtime failures.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1c1%2B7GyAzocpWqUMo7%3DoN48WAdDfPZtnEBHQXpmd7pOw%40mail.gmail.com.
