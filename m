Return-Path: <clang-built-linux+bncBDUL3A5FYIHBBIPW22EQMGQEIUAZLWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4934016A3
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 08:54:26 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id n9-20020a63f809000000b0026930ed1b24sf2011761pgh.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Sep 2021 23:54:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630911265; cv=pass;
        d=google.com; s=arc-20160816;
        b=L5xjM/CaJieZhx2OzZYrTceUKyTaXEyXFPY5TfcwuJ/9KP+Wu1rdJNSC+ULGbEiNfb
         efMYhj7UA9W0ORQERmooESzlQ8RmaJ2YecwyEwUNNq1jhYOVSctbeQPD+F2rN+YQSTOL
         4qlUfgPqNmQHwe9bPY2GPk+86L6F9sYk20buLuHuhj6V1NDMVOoS2BSbmPyq7UHIIeM7
         BTAmY6H6MUMK2AcvNsxIFgv5uPtUi3bSUfWYYe1sxm5XpgpdPe9f4crZt+JDF6UplQSj
         mw/7xZt20oOcYzJylxXj0CAc0mZF6XppYaMwj4WG6BhBs7qwtkztcD1GjgjgGEGrQyqS
         LlRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=7Y0MAWggruA7p7abUTegRE2xcmHx30JJUupGJvFxqOE=;
        b=OvE/NfUo9RgOrhz6oY30ipQoSgd8VaqOxyChv7a4cMfa7HTdtD8IObgsnVpTQt6MeX
         EyAI91vQ2timSmAM5YWTSPVIcRQTBjfxbcqXIKe+EdyQCkuEIZxwEqQ1Uyk8vuBXKbRG
         3Q78ZUotTEm5RBssTII9plOiu6o4wkqoVYL/X/U3xWR4ynADkw2keYU+U2Tuzf1Yr+2p
         Rs9bmmWCE3zwLDPX1SjJf14Nw7bw2CVfeO0wH9YT7LV+dGXcAe7d9i569LpxLmIO7rxa
         f4EooCkqEWTbklHURFoYQNe47x8aAGclMiKfrx5URdcApPsrNGyGosmUGLj0P8KnQMef
         MZjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RlBZBUXi;
       spf=pass (google.com: domain of fweimer@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Y0MAWggruA7p7abUTegRE2xcmHx30JJUupGJvFxqOE=;
        b=CPHf3zmPGPopqEyOa8Gi1c087ecuyiXWVaSyxS1KOyezlXwpZf4XGlgd8RHag9SXDW
         oaU4tEchWxGikBYMl1rc7plyb0gzh+ZjxJsR0r13icHG7ItbRmLTJ0ZrmwVRgh+sJjFo
         3V9BL1++NtCsiq4kFis2OEhAxDTjCl6+4Q6xE3d77zXdZyO/OkB/rNQyZRvADBx0CZKd
         4GIh7SDhnv0hyANt7/gftNKTLEkAh0DhiOgEOCIrQ5SHyUDYTNsyAsmm2W7Sko3zfkht
         fQDGiEFItwRufSOetiSUdtatpk91dxh+SYgBkN2TazlDItcT48KF32xRNbGZFMmJAYJ/
         2hsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Y0MAWggruA7p7abUTegRE2xcmHx30JJUupGJvFxqOE=;
        b=s4HaNeYAVyQ4ToH6KDedne/o+zJjYnwJkqffqkou+7U10v02Vrb9Vw0XlK/Wg6d/87
         LW/VZl4V88K2VRVRoOEGdsPp8aE9GQ6EQ186swjnBmsbUsTvG68Q+ti8HgmuOcE/izMk
         xM3KW2jGiXsItHsOm6edOPj5p2XPrzpGNYqX8IolunALYP4xMspqCK1qJHYYmbLQ4oMk
         GgZdIqf8HHk7oRNB9IPJgcgi0JOgnMeSuxSg/AeF7+G6CfvCfby0rHWzALqRm9UjL08M
         XFvlsR27abEyPATDnyUPpSWPjJoxcoQk/G1uZBBP6L3p285FAKEfpb7Kwv1l3ZaDxjTk
         GuCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316gcBvU+jmjbhihs6YEnYEw1wk3CPO1LinAWyI7jlvAgiapFFr
	qqffDKO0QuSfWCEQiVW1YK0=
X-Google-Smtp-Source: ABdhPJwpzfly89WTHwE0DjVUIcA2SNoRfo107Q64l/TJAUVLI9TSCebCxajOXAz5jKS7Gh7TDpjTaA==
X-Received: by 2002:a17:90a:ce8e:: with SMTP id g14mr12647889pju.241.1630911265115;
        Sun, 05 Sep 2021 23:54:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:388a:: with SMTP id f132ls2351139pfa.2.gmail; Sun, 05
 Sep 2021 23:54:24 -0700 (PDT)
X-Received: by 2002:a63:7013:: with SMTP id l19mr10827278pgc.342.1630911264508;
        Sun, 05 Sep 2021 23:54:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630911264; cv=none;
        d=google.com; s=arc-20160816;
        b=nzJmmwKic+XTit6zc5R9oFdGNMM25T8qIzfjhWtTwiTl9aGlNJVmNtmvaJQY1eU0Z5
         /aoJlJ48SmBfYXHBBk5vnCRZYcW5w7qontXyFU6TVi7vMFZxqTYM4AZGwTzpB5E0lGlf
         vt0AvK2zxnR9iC92BNZKZOD96bbEz4YPy1PYmZ3BwizVRrpM5max/CWXt1+5PXI326K4
         0RO2FLmc0WXOLVDe2XWiYwr00vt7UfD26rF1PaDPaM4T8JMhPMSFkmhof0hgVkwkkc5J
         AhS70UuKdzKlJAp7fwN9bxk9EBKCYvYW0UN0U84T7H52PsRZ/BgBS6QqOKW+pS4ptWEL
         JEyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dkim-signature;
        bh=I0Wqq4Jy8iaEMvTgV2vlnpJmZdhB/J5L3qG8Ebh53Cs=;
        b=pMS9Cn18u9MrVQUXNrncw2PV3H4TYgOb+8HM95pBeo3vC304RhC8QeLvIBzO/akoBi
         jKuOAyFqs3ZN+HQEOGheEPXPlhnH80Y0w3LY3nuF5rQJTm8pnwdOuBeBrvsQT6w8lxTe
         WYO6EOq5FwTq/NdlVAklukkG6DZHFdUxt/k6LAmL+kv3QeOU/Wq9SXSTUMtfymkxv6ta
         EJmEfdqft9qMcB5eQzQ2c11pzIAK4bpyeV3d/2baxODIv4TzGF/yRW28wetcJIH9yrDL
         4A7bITmdPwgpJLe4wByXoccQV5l4fkCmmILZhzrQ/c1WHFz18+Fznf/UFveUBSDxzock
         ezLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RlBZBUXi;
       spf=pass (google.com: domain of fweimer@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id c6si235468pjg.1.2021.09.05.23.54.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Sep 2021 23:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of fweimer@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-URXiBfWjOkuQsCM7reUm2w-1; Mon, 06 Sep 2021 02:54:20 -0400
X-MC-Unique: URXiBfWjOkuQsCM7reUm2w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8718918397A6;
	Mon,  6 Sep 2021 06:54:18 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.194.140])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A11C31045E85;
	Mon,  6 Sep 2021 06:54:15 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alexey Dobriyan <adobriyan@gmail.com>
Cc: Linus Torvalds <torvalds@linuxfoundation.org>, Segher Boessenkool
 <segher@kernel.crashing.org>,  Nathan Chancellor <nathan@kernel.org>,
  Masahiro Yamada <masahiroy@kernel.org>,  Nick Desaulniers
 <ndesaulniers@google.com>,  Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>,  Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>,  llvm@lists.linux.dev,
  linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
	<CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
	<3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org>
	<878s0c4vng.fsf@oldenburg.str.redhat.com>
	<20210904131911.GP1583@gate.crashing.org>
	<871r644bd2.fsf@oldenburg.str.redhat.com>
	<CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
Date: Mon, 06 Sep 2021 08:54:13 +0200
In-Reply-To: <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
	(Linus Torvalds's message of "Sat, 4 Sep 2021 10:22:25 -0700")
Message-ID: <87a6kq2nze.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: fweimer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RlBZBUXi;
       spf=pass (google.com: domain of fweimer@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
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

* Linus Torvalds:

> On Sat, Sep 4, 2021 at 8:19 AM Florian Weimer <fweimer@redhat.com> wrote:
>>
>> In any case, it would be nice to know what the real motivation is.
>
> I don't know about the original motivation, but the reason I like that
> patch after-the-fact is that I've actually been in situations where I
> test out self-built compilers without installing them.

Does this really simplify matters?  Why wouldn't the gcc compiler driver
find cc1, but not be able to pass the right path options, so that the
include/ subdirectory can be located as well?

> Then it's convenient to have a completely standalone kernel tree.

The final patch in the series is here:

  isystem: delete global -isystem compile option
  <https://lore.kernel.org/linux-kernel/YQhY40teUJcTc5H4@localhost.localdomain/>

It's still not self-contained.  And it seems that there has been quite a
bit of fallout from the removal of <stddef.h>.

> Nobody cares about things like <stdatomic.h> They are completely
> irrelevant for the kernel, exactly because we've always just done our
> own, or used __builtin_xyz() for things.

Apparently, some people care enough about <stdatomic.h> to prevent its
use.  I still have not seen an explanation.  Maybe it's because we
haven't Cc:ed the patch author so far (oops).

Alexey, why are <stdatomic.h> and <float.h> so special that you called
them out in your patch?

If it's about unintended use of libatomic, then maybe we should work on
a proper compiler option that also works for __atomic builtins and the
_Atomic keyword.

Thanks,
Florian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a6kq2nze.fsf%40oldenburg.str.redhat.com.
