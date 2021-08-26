Return-Path: <clang-built-linux+bncBD4LX4523YGBBFFYT2EQMGQEQ42GI7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 965403F8964
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 15:50:20 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id u3-20020a6323430000b029023ba96595fdsf206109pgm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 06:50:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629985814; cv=pass;
        d=google.com; s=arc-20160816;
        b=GfFy3JxXBvygiu7fn4gv+y08n2jiqeYgYh3/YtX86RhrXgUryT+hpHqMJ5M1p5aZmn
         Hr7YDgrgcAX+4RZTHJhXeAXBZ1qdYfHcqUj4jHGiGYH01HUHH2Km0k3DHHSgJqN6UHnH
         ss73PhaigqvRUecCM7JFu1xmI86e7jKK3feC7zxu1Hpw5cSC2uvm8bGWe0xLTN1GqIas
         cyWaMJCH42ePP+sOuLq9cWMEFEXHA3Ukuwkh7W19+n9HXxbzMQln4LPS7eQINCUezm7X
         QorTqq820Mk4PHltyCRlrf1y3ZFZjfcGPZS/zV6Pxv7dHLtkPj5p7iQUCbQDzlrnSrCN
         IuUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ykhg/R5VwVpkarkzya1S/fyvc+GNXJik3DZkIIO49ls=;
        b=FzrRRsYdqBM7HSC+hOJ4ZwQgATXb/4QVLlJ8BcbpR+Fo+6m/IE0z4qQsNFTldIqk7q
         JHq6xU56edbKbfUNXQQPvqFFZ24lPZzgnwE4U8/H4rZNQtDHFjymaa11fRqF4CQIYpn5
         /3EUOA6P4Dh9VRGxl/mCyNJBxWR/xw0MgsPUBd3VA4dBVN/q/mvhFmrIJks44FS88KV9
         gZNtYDpw7s8jORqP+an8IPfCVgOtj++WJvdFNPAnWKjanUoFe1hVlmK8CD7BeQMySNzJ
         S+fX7O+aGTuFqMU1ZJuHoCPb5onGutm0wvTAYE7c3BzSGMRm/4V7jYzuuDHPqnYpSZ/A
         3BiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ykhg/R5VwVpkarkzya1S/fyvc+GNXJik3DZkIIO49ls=;
        b=lkuB6RD4w/1IW8/IKbB/e+L4HI6TaAxJLKcuF2yOML9jusRBPUg38hlYn6IWUoVhzk
         jmdsVFD1STVZPcJeT3TkAICpdYl0dCqDJgYPlmMtO9MA7VGtLD8LSCpxcUMvi2IAsbvM
         sjAe8hyl/EXfKoqNXAbr3QiZKaoM49aI9dA8+9i7t+ff8Tm90UH5N1NR3cjSE7ALkPew
         SAiJuA8MDYxy8drcv3wpHTOFTP2BydO6dLAkxX9daFS4s/yBBJaqT/rm7sCB1eBYdyBS
         1EKnebuG/ho1p4S/O7zveRMb8Ug15KlDomoZkgERdik63DJXVWSKWzxICpVMWrb7Akdy
         kTzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ykhg/R5VwVpkarkzya1S/fyvc+GNXJik3DZkIIO49ls=;
        b=gr0mV3ampYeXKHxwd55eQyAavPejXPbElNwAanQ2MVwnOZ33VdlBAD30RBukVi128/
         yC//YE6c+Tyf0kMt79OrA84uHQDUinCFvMHcGyb3mwmzzFPVYSLRMwUlaHjk6n0X8n7/
         ywRuXdNF6jcRs40dhiiaSX1spIWhr8gndQSPeC9s3Mm3jqkWOYv4qtjWvfiPepR1GqVF
         WVKlW8xZi6aPdnJlxq4WZ3efgeIVF29YfFHcLa13mft77hqoZR3JpcOhnU0rXYjQ4Sdo
         4sLJr5NIRrzqb88nXk1U2KF62zHUZ0HnvIolbplYNxIL1tviXBX9TZIwYyvELwL2IyAs
         IfSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+s3+Smhx9ORfdvvnFP31w5SYiTZaLBtRp/QXs+HWOEGnr4rQ6
	t4OpEU5D6fFm4WPV/6i8Gy4=
X-Google-Smtp-Source: ABdhPJziut4Lmk/Ez6/9aBdKTcvD7NTKqVVLre+/HEde9ruGg+sNkZKrT9+vlFiSWu6c00wAO+c9kg==
X-Received: by 2002:a05:6a00:2a4:b0:3f2:6ac6:3983 with SMTP id q4-20020a056a0002a400b003f26ac63983mr1847442pfs.62.1629985813837;
        Thu, 26 Aug 2021 06:50:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1388:: with SMTP id t8ls2248343pfg.4.gmail; Thu, 26
 Aug 2021 06:50:12 -0700 (PDT)
X-Received: by 2002:a63:1e5c:: with SMTP id p28mr3504968pgm.89.1629985812125;
        Thu, 26 Aug 2021 06:50:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629985812; cv=none;
        d=google.com; s=arc-20160816;
        b=UzTk/WpH0Sq9QPv3McC/gf0ir8H47N3GTdqh3t2+RSuOYuccVAZ+46fgvxYv9wZqYh
         tiQQyygHEeTVw9neSAtwvM3GI7XTYSTJNNYRUI4hei1if9QUoLodS7juP3AZCVrqAuF3
         viuHqTk5XlARpt2zyxNK68U0cb++yzlsuC4aqEQXdUPl3MUgSpu0qJ+Ub3umH+X//dWf
         6EjJzaBuvSzaJ1rFzy3odGyjPa69gLuQ6TJn8+2dqGUtciA/cr2AEbykXOmswgqHV5uT
         3wK/EDZZTSt9MxXTKk3pPtGPB6uHC/1BQuWQAyWwt3jCt2VeobjhNeHM8P/fyKZmf5hB
         a1kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=8UgGI/Pwjyamo8QVL00lgoONZN2lPZgsziKIQVJeNd8=;
        b=PUwwGTNZj3eyz5jXyh76tqa46x9GP52Oo8vXbVMWqFYoopXQ9L3MFzLPEuae3CasQj
         6rEDmsJ+iM9XhjemP4nLsu+8PIKIk/2vY5rCOW5oqLC1ZAGfoYMUzaqExt0JoMhJyjFF
         WZcrwYgkMYq/RmR71Ksy+gE6fVDEs+y25+FQdEbJgtfUr/7wa0Dicj5c+D92D324NVtR
         nw06J6QqteXQdbF0QQz9M62FOPQXl2cFhiLqmQqDCd6RrjONxIizysy0IEdYZ0RDRY4q
         NyVLf2Sf7ScE+nckGscjOHoXhGD2tKvDx7rJnvbb72RpvrTczgk3gpigKZZzjasLY3Mz
         6jBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id 136si260201pfz.2.2021.08.26.06.50.11
        for <clang-built-linux@googlegroups.com>;
        Thu, 26 Aug 2021 06:50:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 17QDlx1Q018576;
	Thu, 26 Aug 2021 08:47:59 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 17QDlwDa018574;
	Thu, 26 Aug 2021 08:47:58 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 26 Aug 2021 08:47:58 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
        Nathan Chancellor <nathan@kernel.org>, llvm@lists.linux.dev,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to WARN_ON/__WARN_FLAGS() with asm goto
Message-ID: <20210826134758.GZ1583@gate.crashing.org>
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu> <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu> <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain> <87h7fcc2m4.fsf@mpe.ellerman.id.au> <3fad8702-278a-d9f9-1882-6958ce570bcc@csgroup.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3fad8702-278a-d9f9-1882-6958ce570bcc@csgroup.eu>
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

On Thu, Aug 26, 2021 at 08:37:09AM +0200, Christophe Leroy wrote:
> Le 26/08/2021 =C3=A0 05:21, Michael Ellerman a =C3=A9crit=C2=A0:
> >This patch seems to fix it. Not sure if that's just papering over it=20
> >though.
> >
> >diff --git a/arch/powerpc/include/asm/bug.h=20
> >b/arch/powerpc/include/asm/bug.h
> >index 1ee0f22313ee..75fcb4370d96 100644
> >--- a/arch/powerpc/include/asm/bug.h
> >+++ b/arch/powerpc/include/asm/bug.h
> >@@ -119,7 +119,7 @@ __label_warn_on:					 \
> >  								\
> >  			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
> >  				   BUGFLAG_WARNING |=20
> >  				   BUGFLAG_TAINT(TAINT_WARN),	\
> >-				   __label_warn_on, "r" (x));	\
> >+				   __label_warn_on, "r" (!!(x))); \
> >  			break;					\
> >  __label_warn_on:						\
> >  			__ret_warn_on =3D true;			\
>=20
> But for a simple WARN_ON() call:
>=20
> void test(unsigned long b)
> {
> 	WARN_ON(b);
> }
>=20
> Without your change with GCC you get:
>=20
> 00000000000012d0 <.test>:
>     12d0:	0b 03 00 00 	tdnei   r3,0
>     12d4:	4e 80 00 20 	blr
>=20
>=20
> With the !! change you get:
>=20
> 00000000000012d0 <.test>:
>     12d0:	31 23 ff ff 	addic   r9,r3,-1
>     12d4:	7d 29 19 10 	subfe   r9,r9,r3
>     12d8:	0b 09 00 00 	tdnei   r9,0
>     12dc:	4e 80 00 20 	blr

That is because the asm (unlike the builtin) cannot be optimised by the
compiler.


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210826134758.GZ1583%40gate.crashing.org.
