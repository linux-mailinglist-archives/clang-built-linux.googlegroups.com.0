Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBNMYQ75QKGQEX6V3SBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9AC26BF29
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 10:26:29 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id l15sf2248070wro.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:26:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600244789; cv=pass;
        d=google.com; s=arc-20160816;
        b=tReVUudqLcMhjuibKmXMjio55RG7U4ERumnmrOELAB+5KqvwZ0NmKtcNVcnwRLxW8h
         aqQ/1ouZk8Y+Gse6ubRELBcvKb7u3dSjew71KMBtGI21mlWq6ktL2xl6q42eySDNJnMe
         1iHRmOMTSfL463YYfXH0cF5483iDchEBDsgKfokmH0eihqxGa8FxpIZkEEJl+vT1sXfO
         E9mhtOi+evBhZk1lzbkEw5h96a5k7rLFd5uQiwAHbXmi/4L9OUV+SK5zY0c6/vpsqpqR
         qSVS7x3IS01G9bKHFU1LKEgBeJn6s1THY4/dXmfUm+kREbh8nLxKlTPlftCFSjxQc12y
         ZaGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=z4lSCSgbtn1eQJvIQLIOKRUgsK7ctFUJQbZIrdimzu4=;
        b=eM08uEGn9sz259EIXXId12/EmqciEY6DNHU/iP31BoJTu4OrKhrYrj31n6oSU1or1M
         jLivf+WEDOjoC0yZvfSvOtBktwLnBGze6vucAkhzzcRg4S6pKcpYx/iocp6MNf62iHie
         GvDuUHDiCIrsjIjZHhXAJqqUlPDm/b/Opql1vqoQ5nylGycH9y8M/RLkuDv/BTzgdCx6
         D6Sk8t2wvpP+ZshD6aKKu+faq8Ijy7BxyFd3xUs5O3YkJPufvBjcrUfr5Cv4qavzM2WQ
         GBoRPApYXbNpRyB5aUY5iN887LLkYgE7ua9vHrlwVv8fEHazGWyOq0MK+Znwl6ixrToi
         2xAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=GHkvpiG8;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z4lSCSgbtn1eQJvIQLIOKRUgsK7ctFUJQbZIrdimzu4=;
        b=bCkmZUQpzr78BdmMpy0sd3fUATqaJrNMO182NJ99YL+MgHFe81exIkSqgGpZdcJbHV
         mC15PLD67nivQLp9tKeusFTYU79mN86XHP9KGfJLfHvKtOoxVY1lXm7psmO8k/gC9bXp
         qPgXAiDiCGb3oJkkynxeKgVVXNwLwztBYrvwc/4JL4Ir0/x0U57Nf2VN6BdjaWgiYDie
         3+rC1jaoHrHlEi67iEOQPTZJuUoT8xIybxdN99YHwyGLRqPNQ46QVIjbVwn6rWw70qHb
         lsI2YaOrk+YOuKBMXSNu5KILzPsQgRQGyELe+9a3m8QMiaFLgQRJNB6TiHwx8jDOdcFZ
         Wimg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z4lSCSgbtn1eQJvIQLIOKRUgsK7ctFUJQbZIrdimzu4=;
        b=OMCvx1cKbYjApGjy+gnBTUrx7QjFKJjMp8czATL/qs1sfOPcOqm10T8YWJ4DMyh3UY
         Yj9Sk6El2Vvfv0NLE0veVQL1NiGfyegv5wzO3e9+3JbWD3oVaHRJia3lv3Pe/eDXg77L
         g3XIpNyahHTMccvcUn32gYqg8INO6UMsrOzir4MnYuJAlA2oNRazGo7EBenFJZjMuSd6
         hOFF5ClIC5Bj/MLa25mRmGJ5YQMuSZYKamjxA/0DTnhwkcnuTqc7JSMkgvKlFYgTPpuM
         fBeEJHYdg322gcbtk3JiTX0hgogDBn8ZRQME0VG+Pc81HgvF4X9/b1NdHb2jesrnDcCV
         SJWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321Q8xWRy9oshiGeaWGD4RQqMVTtKbFmM0UpFmcQ6vU6I3mEIlf
	wcSAZUH9OSK3cBFey4WFXsM=
X-Google-Smtp-Source: ABdhPJyYC5y7qmtk7WM0nxsoMfmN0gpQzkHTM0OJjJO1/MH8m6TUCdBQjjXTbDCYTkWhR9wWO9wPDg==
X-Received: by 2002:a1c:32c6:: with SMTP id y189mr2090429wmy.51.1600244789355;
        Wed, 16 Sep 2020 01:26:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls1296264wrm.1.gmail; Wed, 16 Sep
 2020 01:26:28 -0700 (PDT)
X-Received: by 2002:adf:efc9:: with SMTP id i9mr26560648wrp.187.1600244788467;
        Wed, 16 Sep 2020 01:26:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600244788; cv=none;
        d=google.com; s=arc-20160816;
        b=gQqycRhRUPeQM6KNXqMvRNQ3sZdD24i+osrbfkr8Kx4HStRb0aKcXuGtB5oCuY9ow9
         d8BqYgyfYtR7Z4OLePv1+xbedN1/clXu6yQorIZTuwTcQ1kGNOB24nfrf3i9pGrjVeB3
         aMTkm1CKZECPN3BL+q/gaZfXiJGj96cNGYo58Z7y7CVWqE8HbeE0TSRmxS9rgW9bXdR+
         EGBct4P9jOye+F4QgRtxH9Ynhni3geHn95Ff8ldxGc49grgW746/DtPOmRjI73rb4NzA
         PW5NlsRgbqsrc54KPtbwwqqsBTO9HFNhfZW1BYXIKR6zfIoWCImKp9boh4luowBnIXc+
         UwzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=K8XdDNTffEBxVg9FrlI2e4DT7s1P+rkY7MIdNMA1C5M=;
        b=SKrark8RJNcP4opLm2tYqyqHA1kxRIKPbcaOqyMXs8eFufwhg8hCYXkf2yu4hoMNw9
         fgjk1XN3G6RFwtEfDZ7U5aKs3sh1oPMWvJLazkKmgRhYBcs5LtB4BO+KSaRob3WLozGC
         2nQGHIDF8EUtpakzY9kdnf9CBa9YiLMCzcP2kY3ZFy7bEPzlfNOJjbxCQ2PIpSxxiBcP
         H28dllCfvb3B74GgoAXU9/rRSQIVwbpZh9JVFw+gv47TtUgsDIFlRVepJRuH7gmGrgCc
         FNODAFxckwtUesgh9vWjAVexWuY623xZxilG8zVpcHGZuotBVcRyLZvd/Ke6a6PfF5t9
         3awA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=GHkvpiG8;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id k14si438018wrx.1.2020.09.16.01.26.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 01:26:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0c3e00e4ebe415c26f1039.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:3e00:e4eb:e415:c26f:1039])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 6FD311EC0330;
	Wed, 16 Sep 2020 10:26:27 +0200 (CEST)
Date: Wed, 16 Sep 2020 10:26:21 +0200
From: Borislav Petkov <bp@alien8.de>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: Andy Lutomirski <luto@amacapital.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Greg Thelen <gthelen@google.com>,
	John Sperbeck <jsperbeck@google.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
Message-ID: <20200916082621.GB2643@zn.tnic>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=GHkvpiG8;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Sep 16, 2020 at 12:40:30AM +0100, Andrew Cooper wrote:
> It's worse than that.=C2=A0 Even when stating that %rsp is modified in th=
e
> asm, the generated code sequence is still buggy, for recent Clang and GCC=
.
>=20
> https://godbolt.org/z/ccz9v7
>=20
> It's clearly not safe to ever use memory operands with pushf/popf asm
> fragments.

So I went and singlestepped your snippet in gdb. And it all seems to
work - it is simply a bit confusing: :-)

eflags         0x246               [ PF ZF IF ]

=3D> 0x000055555555505d <main+13>:        9c      pushfq
0x7fffffffe440: 0x00007fffffffe540      0x0000000000000000
0x7fffffffe450: 0x0000000000000000      0x00007ffff7e0ecca
0x7fffffffe460: 0x00007fffffffe548      0x00000001ffffe7c9
0x7fffffffe470: 0x0000555555555050      0x00007ffff7e0e8f8
0x7fffffffe480: 0x0000000000000000      0x0c710afd7e78681b

those lines under the "=3D>" line are the stack contents printed with

$ x/10gx $sp

Then, we will pop into 0x8(%rsp):

=3D> 0x55555555505e <main+14>:    popq   0x8(%rsp)
0x7fffffffe438: 0x0000000000000346      0x00007fffffffe540
0x7fffffffe448: 0x0000000000000000      0x0000000000000000
0x7fffffffe458: 0x00007ffff7e0ecca      0x00007fffffffe548
0x7fffffffe468: 0x00000001ffffe7c9      0x0000555555555050
0x7fffffffe478: 0x00007ffff7e0e8f8      0x0000000000000000

Now, POP copies the value pointed to by %rsp, *increments* the stack
pointer and *then* computes the effective address of the operand. It
says so in the SDM too (thanks peterz!):

"If the ESP register is used as a base register for addressing a
destination operand in memory, the POP instruction computes the
effective address of the operand after it increments the ESP register."

*That*s why, FLAGS is in 0x7fffffffe448! which is %rsp + 8.

Basically flags is there *twice* on the stack:

(gdb) x/10x 0x7fffffffe438
0x7fffffffe438: 0x0000000000000346      0x00007fffffffe540
		^^^^^^^^^^^^^^^^^^
0x7fffffffe448: 0x0000000000000346      0x0000000000000000
		^^^^^^^^^^^^^^^^^^
0x7fffffffe458: 0x00007ffff7e0ecca      0x00007fffffffe548
0x7fffffffe468: 0x00000001ffffe7c9      0x0000555555555050
0x7fffffffe478: 0x00007ffff7e0e8f8      0x0000000000000000

and now we read the second copy into %rsi.

=3D> 0x555555555062 <main+18>:    mov    0x8(%rsp),%rsi
0x7fffffffe440: 0x00007fffffffe540      0x0000000000000346
0x7fffffffe450: 0x0000000000000000      0x00007ffff7e0ecca
0x7fffffffe460: 0x00007fffffffe548      0x00000001ffffe7c9
0x7fffffffe470: 0x0000555555555050      0x00007ffff7e0e8f8
0x7fffffffe480: 0x0000000000000000      0x0c710afd7e78681b

Looks like it works as designed.

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200916082621.GB2643%40zn.tnic.
