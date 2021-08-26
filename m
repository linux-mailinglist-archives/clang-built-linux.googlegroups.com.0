Return-Path: <clang-built-linux+bncBCR5PSMFZYORB6GRT2EQMGQEH7DJIIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7713F8A5A
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 16:45:26 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id q22-20020a0568080a9600b002695b5be070sf1660964oij.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:45:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629989113; cv=pass;
        d=google.com; s=arc-20160816;
        b=FHPCxUxZOYUFiLvzJ8Q5AZ5KmdMX3XLWSqbwdT4SGNzyxksyEXYLzE+XxBunGqidFY
         eqxSd5iJZg3DYewSePXid6PaJwK2uZswupgZ54nG9WwrxOBEgoO/D/iIg7jC5dj3GsVi
         8GqQS1VTHat2f+bhe5kmHyuATnW+hNJjZ8ABgy8JEHFR3XJat0J/lH50AFwDldHquToD
         BeM/OUSJW6B9wWRauC6UYkZQ1w19tO5z8iJWYnML2cMwvCldC7DUNXdUhPWHqoulUAZp
         24GM0RTNq7tvCXyOITvUmPHmSQ2l6OD7+kQHsDNB+eLOT65VNEADHEy3p74Tqw/8+HC+
         i/0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=XX0qXL2Stmph1TVbwBeEWG9sPoE6DykE4VowTuhisVI=;
        b=QlMw1DPV1VM3P6HI/iqma9Ly5VffywNf7Iztddh6Ym3OTTUhXqb5P8vpqhn7VkFsB9
         I43HssuwkjDwNQu2WT3mnloZ6AVymXeOsOVbKEA+66uLyHbnOWnbpa3Cu97njbkwE1z9
         zEBbQ1RzkrxX/R2/3hz39Mae52oVIv8wDkZZNQNGWaTDZML4ySdLeT7P318cCOEzs9Id
         db2FhABoOjprB7X1cevx7MbUvdEe7KVPyF0KwEVr48zIIBYrue4Bm6eDII/GEQyIQmS5
         UsYmeCnDqXkO6V9mKQMXzPKOa7L47r2dt5E1IXIlZT3DzRb976eYWkySjFBkkXakIJj0
         C/lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=qDsBtAzZ;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XX0qXL2Stmph1TVbwBeEWG9sPoE6DykE4VowTuhisVI=;
        b=M6YmcnjTn5FuEAahGbR4U6pNsxkYGkyj+iI7PD0iS2sh5MudnVa/X57eRWlsyuPa9b
         vo+WHEl9SPvHgWf5WNhx2cVLoyUi40rTPDgcaWEtbAATqxZVwuZ/YwoVGyMmWWV7oYU8
         3v73dOM8at4vhjm6nO634aGsBpxfCohi185eTzoVRGLG+1XmPIgYcoESl2QDmzG9qkVG
         16qGcgC2zAL+0NrvJe5SLzNvHwipJ5CUMEZnZ4Vj/u81sB6QYuTqhCul3+qdxZ3luf9J
         QKI1g/IVvNYcSF+OEkfS7YBxGXs/4nXb+mRpbm2nPgMCo7YdUksie2H8LvF65fKEB4C8
         jaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XX0qXL2Stmph1TVbwBeEWG9sPoE6DykE4VowTuhisVI=;
        b=XHghrWpsY8eGiA84upaGKuXa6unWagKAofsUrdT++0DlmDs3HHPtz4jmGFVgh6YtB9
         O7fONjfmRLzdTx1OwJYZugvXwHCew4XnyCXc8n+1+E+iHAecYegf8cxpJdZUA4Y/xPjn
         pn/MOXVr5sr+0f0d97EASkUmvZqWDbwXncYQl/u9zkFmva+Qx0BpSUedxAT84ep2WQ1/
         Crbolt4dqQcXfSeKce4Qw4ySYoMpabFzqNcqi5A2JX0wcNZ+P3QtulkIBezjJHmethwM
         TeSYOJtN0a7CVeg5BSOB4qWY0HAwHyJEwuzCLOqqq/smA/Yap16HHre9xvGvaIJUfVxN
         HZyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u2crtf+swYf4u79HMRjAtIcRxIENNk5/L1n7lNjaqCiXZtu0V
	L6naviU14VCM3nASwhJUFLg=
X-Google-Smtp-Source: ABdhPJyEFx69hrXIl2NJzrm3rfzOrD6ozPJ3Hp+XhTxPzUfYXngLaKse+1d4hAEh+WYoS0sP1aFiiw==
X-Received: by 2002:a4a:d457:: with SMTP id p23mr3423967oos.70.1629989112800;
        Thu, 26 Aug 2021 07:45:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4408:: with SMTP id q8ls1592790otv.7.gmail; Thu, 26
 Aug 2021 07:45:12 -0700 (PDT)
X-Received: by 2002:a05:6830:2443:: with SMTP id x3mr3539404otr.12.1629989112196;
        Thu, 26 Aug 2021 07:45:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629989112; cv=none;
        d=google.com; s=arc-20160816;
        b=JP+Ug9RDZkhBjD6G5dpCIlyJ3w0wwRhiOhN4k+5/nYq+Ez6u64xk3ElHbzVt6bcYVD
         /LCj8Kx2TqeVbyTEoEjikMsTy5OrSWaB+VBYSK/dadiZDWdevEZF1p8mwVEV/lUv64Lt
         29S59Z+82LJWuanHiyNl72XX/cvGavqV4NjKWkHlT56B9YCKyY2lmCNPZj9D0zKO0j4k
         d6sdz8y14xaDPyGDgJkEd5lmkBRO3O2hR7jUX+b8V/TDSLG70ubiVxM6/7o3TeaSCKlv
         8CL9Nu3yy4J4VRxMKKgliIcvjHVIO/U7acMcowZdovwe45OnUjvxOfwNd730ZZA9U8YP
         fLVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=Yvgj96P8jzO/WLiA4Ma9vFBhwR9wArqJyFIIgyBaX3M=;
        b=W0RYn5qlS5QhWMiUZQXpBG8P8AzuxYEetrjFdsTMWbi4isPPpGEqDLt8xVrcIdntZd
         r86GRLImBr7T3qh8HeueC1ve8+0CUlzzV21VQOb1EOMcYXhRzaDcdD3lNKe490wr4Noq
         zraqhaR0WQJqATL2OaoC7zg/6OWaRrCHZ8rB3Fnekk9fcWvbd3Mrwdax1pbTB51ix9DC
         iJlQmb7F75n9hq2Gjv8AsYoHdTCo2LJxiyFNQjJcznEIq3kkR05KQ5R/kOI6HtHKVpjc
         FY+7hDUGB6Vo5s8sh5U1ihFmQpsJrZ11bhn0MLWXFWLWDc5PZvMB+u2v0QX7CwK556dq
         HtYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=qDsBtAzZ;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id s30si278227oiw.1.2021.08.26.07.45.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 07:45:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GwQcM4Fs8z9sRN;
	Fri, 27 Aug 2021 00:45:07 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christophe Leroy <christophe.leroy@csgroup.eu>, Nathan Chancellor
 <nathan@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com,
 llvm@lists.linux.dev
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to
 WARN_ON/__WARN_FLAGS() with asm goto
In-Reply-To: <3fad8702-278a-d9f9-1882-6958ce570bcc@csgroup.eu>
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu>
 <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu>
 <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain>
 <87h7fcc2m4.fsf@mpe.ellerman.id.au>
 <3fad8702-278a-d9f9-1882-6958ce570bcc@csgroup.eu>
Date: Fri, 27 Aug 2021 00:45:06 +1000
Message-ID: <87sfyw9sel.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=qDsBtAzZ;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Christophe Leroy <christophe.leroy@csgroup.eu> writes:
> Le 26/08/2021 =C3=A0 05:21, Michael Ellerman a =C3=A9crit=C2=A0:
>> Nathan Chancellor <nathan@kernel.org> writes:
>>> On Tue, Apr 13, 2021 at 04:38:10PM +0000, Christophe Leroy wrote:
>>>> Using asm goto in __WARN_FLAGS() and WARN_ON() allows more
>>>> flexibility to GCC.
>> ...
>>>
>>> This patch as commit 1e688dd2a3d6 ("powerpc/bug: Provide better
>>> flexibility to WARN_ON/__WARN_FLAGS() with asm goto") cause a WARN_ON i=
n
>>> klist_add_tail to trigger over and over on boot when compiling with
>>> clang:
>
> ...
>
>>=20
>> This patch seems to fix it. Not sure if that's just papering over it tho=
ugh.
>>=20
>> diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/b=
ug.h
>> index 1ee0f22313ee..75fcb4370d96 100644
>> --- a/arch/powerpc/include/asm/bug.h
>> +++ b/arch/powerpc/include/asm/bug.h
>> @@ -119,7 +119,7 @@ __label_warn_on:						\
>>   								\
>>   			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
>>   				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),	\
>> -				   __label_warn_on, "r" (x));	\
>> +				   __label_warn_on, "r" (!!(x))); \
>>   			break;					\
>>   __label_warn_on:						\
>>   			__ret_warn_on =3D true;			\
>
> But for a simple WARN_ON() call:
>
> void test(unsigned long b)
> {
> 	WARN_ON(b);
> }
>
> Without your change with GCC you get:
>
> 00000000000012d0 <.test>:
>      12d0:	0b 03 00 00 	tdnei   r3,0
>      12d4:	4e 80 00 20 	blr
>
>
> With the !! change you get:
>
> 00000000000012d0 <.test>:
>      12d0:	31 23 ff ff 	addic   r9,r3,-1
>      12d4:	7d 29 19 10 	subfe   r9,r9,r3
>      12d8:	0b 09 00 00 	tdnei   r9,0
>      12dc:	4e 80 00 20 	blr

Yeah that's a pity.

We could do something like below, which is ugly, but would be better
than having to revert the whole thing.

Although this doesn't fix the strange warning in drivers/net/ethernet/sfc.

So possibly we need a CLANG ifdef around the whole thing, and use the
old style warn for clang.

cheers


diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/bug.=
h
index 1ee0f22313ee..d978d9004d0d 100644
--- a/arch/powerpc/include/asm/bug.h
+++ b/arch/powerpc/include/asm/bug.h
@@ -106,6 +106,12 @@ __label_warn_on:						\
 	}							\
 } while (0)
=20
+#ifdef CONFIG_CC_IS_CLANG
+#define __clang_warn_hack(x)	(!!(x))
+#else
+#define __clang_warn_hack(x)	(x)
+#endif
+
 #define WARN_ON(x) ({						\
 	bool __ret_warn_on =3D false;				\
 	do {							\
@@ -119,7 +125,8 @@ __label_warn_on:						\
 								\
 			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
 				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),	\
-				   __label_warn_on, "r" (x));	\
+				   __label_warn_on,		\
+				   "r" __clang_warn_hack(x));	\
 			break;					\
 __label_warn_on:						\
 			__ret_warn_on =3D true;			\


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87sfyw9sel.fsf%40mpe.ellerman.id.au.
