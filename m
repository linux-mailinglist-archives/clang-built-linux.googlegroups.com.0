Return-Path: <clang-built-linux+bncBCS4V27AVMBBBC4G2H3QKGQESSXTD6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 481992099CF
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 08:24:12 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id u59sf4204194edc.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:24:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593066252; cv=pass;
        d=google.com; s=arc-20160816;
        b=lXLETNUWCRRAkopZGarrTO7No5tRy0yemaCOV75cchr0w4F8IhLqIhTvH8iSaePRM1
         IVvaSGtcnLGpM98gI66W3YOQ2MeSVdhc1eoDzyaZdVwMnNhIFk5OLZ1QJcHm0ladLFFO
         givrCg7SbvfRsXso+DMIH8xllN1r2yhi/PC7JjozNEJFNNoixYWeeRctTC7fivhb7xX4
         V2LeMpsz3lZAZmTA5w7avc9UJp33QwDrPhhJeuaNFmU9OBnxAsuOqTjcAzKUyLVrysfN
         lqSwR8dpvcSw00Cy2QgS2DvGYDkbrGKQaP8EwNvanZMrOozfz7JNQAzTSMlnicBPKxEo
         9kQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=arVQq1Yb72t2wuSje3szlh/C5WIR2ZwT0byWtEnCQ+k=;
        b=eZJoLYqFFiS+1AxjGQ2si5MyHlF6pvo0duaAycY2Da5nJimvyVh9Oufq+5C1nMA4n8
         RGV9nzmmql8LUR2YdLJ6EsFBU4eyRo5LGDZV44BEfkNBRhLJPHrahQ8DzQJCC81Joel7
         xDcV8CB4zZP+ZPgWY4YhOwdW8pjVZGRc8yeSyaeJpVx7Dte8KH9u2x0fju1QVxorokWr
         M06eH5wkWtaz9u8mqPYL6/P0bOPiG+CaW/u+q6ca4fUxaF10Ug2Idyd6EMjuVpH+zCos
         aCNuDbTUD114894Lj+IFQEHtYU+rC75yBTMBdAtkN3C8LAVO7p1/3F8ADNssNJ9Qhvom
         kTWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted sender) smtp.mailfrom=richard@nod.at
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=arVQq1Yb72t2wuSje3szlh/C5WIR2ZwT0byWtEnCQ+k=;
        b=apuwiIZ3AzxRJCIvuU78Z9LHhVqJTMbhpvWk8gqqh/bNWsw/iMgeRuIdOydzR5VbAA
         qfZ06QBOEKAxJNL56f6wqYVBoF93ZTVi7gSqOTEGywqQKM366KJDcnhAUHyY7QFtbhTg
         AB20sWGrzSTcSiDo5v+dVnvEuXOQsiO2czT87DUaD/RO7/3xZBZuI8tI/NwT45Z+yuTc
         rxWkWwkCJ74ALwg1g9sQIuUTyNQPlkcZIYXwf6i5XbMPKhP3EfR8wLfKhtUYhVhSiHJ+
         uhfqgbIa+AGNoLhiV17ptRwJVGz9NHae58g1WIZrmREzDsrXaz0cwbL3hOeGKF/M62cd
         IvHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :thread-topic:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=arVQq1Yb72t2wuSje3szlh/C5WIR2ZwT0byWtEnCQ+k=;
        b=IBKDvK5U68jG2L/9tqUjh5xzlgGXs3nnLrKKtOuRo75F7Cp55iebAVCgwOydzLi1eM
         4BhpPp5P0JJXSGaTWhqds2ThmTukxmk8oaC9w8hCof8HEaHhUw29NxMkSBvN863tbm3h
         KSmJ7757dYnaIwn4tBObOI7cr0lorEMTr4OENBFpQCU/6KKajee1DQbvmv0YPf0ko3+n
         sVXjBfBCVyBerKc67PnMcD6by24aMv/5BKI8j1AdbvBH1oY+M04nO+jihJdeFTc5JR56
         73r53tJdOaerpRsurcFqpeqN5K/OHGGDgKkW6hnugFzFqwTHKvlhlgmsZCUAP+ik8NJy
         glqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oFxhCHX4yy4UE9zSuqxYm42avya4QEcGUZY8TVcmAWUUP2Zcy
	OCaT95H8oVr7ExyN+mWWl2Q=
X-Google-Smtp-Source: ABdhPJwgY/irEFJJ+LYiq4OB+YWJKvUSfj6ngklguhuWxDBQL0hNG2Uh+vfoJ4dN/LoeKQgVc2Q8zg==
X-Received: by 2002:a05:6402:94f:: with SMTP id h15mr430659edz.313.1593066252029;
        Wed, 24 Jun 2020 23:24:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c142:: with SMTP id dp2ls2025388ejc.5.gmail; Wed, 24
 Jun 2020 23:24:11 -0700 (PDT)
X-Received: by 2002:a17:906:a0f:: with SMTP id w15mr29674839ejf.332.1593066251578;
        Wed, 24 Jun 2020 23:24:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593066251; cv=none;
        d=google.com; s=arc-20160816;
        b=UXzNH2eIzeN0BzspSUCFHgmYL/LPgnb/x7UoziE9l+4fhNoUNAyJQU+4cP37243tS1
         3PsUV+cn/9HE+RDj5sM0dqKNOJlHMZ26MhvJw74ZIjniWvuQaJvmk7zwBPoj8/Q3oBfa
         1LvSLcp1sR0/wOHSAto7YbGtlttElpLRpJQKWz5mE2e3SlWiXWnmJMCgOYZ0o1uq6d9I
         6fpCvFnlHb7QJKTemAwEzXPTlEUhwYJFSFOT1Qx0779VvP/81G1AuDlEjwT0T24ZZnY2
         sFxe+sZc1kbdoWyH4LX2RDZ8EJfoW4qsY4qdtLP+egCo53MF298FMlpeZX9ogWMAug4z
         ArVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date;
        bh=vrwW/qTZHQ9qTbaDPUod8+ghuqSq+cFwJ7JXXSmpX44=;
        b=tNaP9yEPmiLYRHFr/+sQnTsRtVywgir0lynN8/bQOPyhNjDAERGSFyB7bJONtGmnFq
         CeHjRrOIi2q2jgTR/tzy8pRq+jM8kixurrf3aB3pigdZFPR1TtpympTF/iDihEspior4
         oWXy3/W6TAl5RTOWp7oxW2aUFTW8/0OTk9B2zhxwSr40l/8EG7P2Pw4KGI7IDhJeJwAA
         iBpBny9vF6JmjZ9DrTyzpUHjwIcEJt1gyOsm7Hx37rnp7oLmtRyHDxFSQEXcY67i8XEk
         8gw4W2N6K6TeyN9ONVVVx4buCLAu0opi4EpfvSKAC16l/ZLlv2RTSzTjeRrL6YMZgEf7
         DhBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from lithops.sigma-star.at (lithops.sigma-star.at. [195.201.40.130])
        by gmr-mx.google.com with ESMTPS id b6si817421edr.3.2020.06.24.23.24.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 23:24:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted sender) client-ip=195.201.40.130;
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 33A54626F1A9;
	Thu, 25 Jun 2020 08:24:11 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 5lXw8bOohNOj; Thu, 25 Jun 2020 08:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 407E1626F1AD;
	Thu, 25 Jun 2020 08:24:09 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id LCL_KQ4g-Hqv; Thu, 25 Jun 2020 08:24:09 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id F0FBE626F1A9;
	Thu, 25 Jun 2020 08:24:08 +0200 (CEST)
Date: Thu, 25 Jun 2020 08:24:08 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Kees Cook <keescook@chromium.org>
Cc: Randy Dunlap <rdunlap@infradead.org>, 
	Richard Weinberger <richard.weinberger@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Prasad Sodagudi <psodagud@codeaurora.org>, 
	Sami Tolvanen <samitolvanen@google.com>, 
	Amit Daniel Kachhap <amit.kachhap@arm.com>, 
	linux-kselftest <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <1916262186.58280.1593066248850.JavaMail.zimbra@nod.at>
In-Reply-To: <202006242300.145D555@keescook>
References: <20200529200347.2464284-1-keescook@chromium.org> <202006241335.2C0FB5DF90@keescook> <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org> <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com> <10f7c20a-0a32-f5cf-7fdf-761db22afcd9@infradead.org> <03486f13-b138-2fc6-4d90-2737d86add2f@infradead.org> <80f501f4-d4fb-1f22-5603-57b5490a695d@infradead.org> <202006242300.145D555@keescook>
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: lkdtm: Various clean ups
Thread-Index: nApJhg2/+hA+nTNrNh5Vko39Y8Hygg==
X-Original-Sender: richard@nod.at
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of richard@nod.at designates 195.201.40.130 as permitted
 sender) smtp.mailfrom=richard@nod.at
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

----- Urspr=C3=BCngliche Mail -----
> Von: "Kees Cook" <keescook@chromium.org>
> An: "Randy Dunlap" <rdunlap@infradead.org>
> CC: "Richard Weinberger" <richard.weinberger@gmail.com>, "richard" <richa=
rd@nod.at>, "Greg Kroah-Hartman"
> <gregkh@linuxfoundation.org>, "Prasad Sodagudi" <psodagud@codeaurora.org>=
, "Sami Tolvanen" <samitolvanen@google.com>,
> "Amit Daniel Kachhap" <amit.kachhap@arm.com>, "linux-kselftest" <linux-ks=
elftest@vger.kernel.org>, "clang-built-linux"
> <clang-built-linux@googlegroups.com>, "linux-kernel" <linux-kernel@vger.k=
ernel.org>
> Gesendet: Donnerstag, 25. Juni 2020 08:06:18
> Betreff: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups

> On Wed, Jun 24, 2020 at 06:45:47PM -0700, Randy Dunlap wrote:
>> Looks like lkdtm/bugs.c needs to get/use arch/x86/include/asm/processor.=
h
>> but it actually uses arch/x86/um/asm/processor*.h, which does not have t=
he
>> needed structs etc.
>=20
> Should I just test for !UML in bugs.c? (This is all for the
> lkdtm_DOUBLE_FAULT() test.) I already do those kinds of checks for the
> lkdtm_UNSET_SMEP() test. e.g.:

Just had a look. Yes, this sounds good to me. UML has CONFIG_X86_32=3Dy but=
 no GDT. :-)

Thanks,
//richard

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1916262186.58280.1593066248850.JavaMail.zimbra%40nod.at.
