Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBHEXWT3QKGQEQIR74SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CB658201AD2
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 21:01:49 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id d79sf2503942vkf.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 12:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592593308; cv=pass;
        d=google.com; s=arc-20160816;
        b=GqcDOJK/HnaIvfdPsoHT9TDd95jvj8d/vCRPYpowQAEhdzvxySRgFH/bJIQT2vnH0f
         5oOrmvq6qr9RYi+krovL72m+REibvuCVcePXTDB+V4MYlYBa9va15s2ARRkfBh2bpLd2
         O9T0wHcYvs3VcdujkSpT4+WBMm6BrAXRbZ/POaARCJRmAQaRQsBhe69sUURZtu0Z/GS3
         Ff2NHdsvZZU9YLdHB5DF/XHMQooFeX3m1J5sgbgt/IhCLBFbxrd/bRw0zzIAtbzkKSwx
         z0mGEm9dimOrv/dIDqd83NnY/Via9FXcQ2+fQRXKKPKcDf8VJCZ4hoewT9AH+g6d4Jc/
         J3Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EKhPxm4C1KEyQ11MeWTDKuH/69uY4jNO4orHZO0rYWE=;
        b=JHfVXiWg4QuwgNO+2X7J7H334u3ihFFxRXN0uDqd0zdNGCEgZG59zwpEwcuAjgVATy
         v3jeTUBRKw39R3AWGFkpI1Phq1+4cmSf5f3qu7k3Z2FwY/WkFq/ldlf3S675jUsg/ub8
         9XqAcSlRt+WRvdFale9w8MFTQBeUlF5bxi2n8W4FKNcMn+su30Rm4+vhA5Z4AmlLDCT+
         wzqihcENIVYapLS3iJEPgji63m7bOL4hy1PwMlH8Clfy0AfIv9JdmpfkxggKnMbhC5hx
         KtD6AzlYDZfUDOvc25fKaFrJx8Ejirk8uZ1E/nAPy3QBw99stxCCO8LHumFndMMEf/3c
         RSmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="lLjd4sH/";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EKhPxm4C1KEyQ11MeWTDKuH/69uY4jNO4orHZO0rYWE=;
        b=R1AO7kREFWtRK2NN/aHKdhI4M7IwlFY2LoCE5UXQj8PhJ0ufoqDZxz3HJ+YW7EeHXl
         dNuejX1HUwlGL51i3W7HqFJIEuQjCcSGC/NiEHYAZIeZxszI+5vld6MLzEZ8Eedy5R6g
         0uXy+3RORACmUwqrIAG8Du+X5ldhMBFmoRCijRYSfRi3lRHAYTxO2rD3SlOJzYnRECIZ
         Na/pbShsyA+IGDOApNyr8IDg4yhNqHR3Wdbf9vRPL5C9NAhzgA8LueSI789kK4XGU9Ms
         G+DVvaEDWBGOgiEcZI8W0wI0MbVmM5wNELEl0cNSyCin/tOf6EDhtUXL406lw3eldqYg
         YThA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EKhPxm4C1KEyQ11MeWTDKuH/69uY4jNO4orHZO0rYWE=;
        b=kCMitlfdqYVf370bCrskXPFjopzJMMckqyrcGTBUJ4llCEZ343mJ8DfKZGDCcZArti
         I3aAbDUsgvbspPyJ10a4mwMRzZPdKwytxKxF1SEgjiYC1U3UdDzl8qE99cOoc5qOMEDu
         KeFAZEYYD4Jmflh19PJ+/7I1K5EIl7k0YbyhSFFJEUIWd89/2uCeNTFrWYuiDRizo3aF
         1P8rDjJ87w8aQjzph0CJfLCsLf8BI4fpHZq03y2Qu+YlSfIJnwN1C2W/F/DwnXNoXBCE
         nEsLSTrxZnR+b+617fcIFRZkYLPTXysKFtUwT/8xN/CJg0m28JBG0ZCit0hqW0bWdBpM
         VVww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Bi1+bXpf6vtoeDCwFPslfcn2mrcx6qHre+HCk2VhdyJmfRF7U
	Y0VFNSmFAbWSjucc/jbL7KI=
X-Google-Smtp-Source: ABdhPJw8aK+hryk7NNXpGR+3U8tcQ7Drnwdsdmlv0CvqxtNA3O+113+KwB5knwdZU/oleQZaWko5uQ==
X-Received: by 2002:a67:e0d7:: with SMTP id m23mr9387666vsl.221.1592593308567;
        Fri, 19 Jun 2020 12:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7001:: with SMTP id l1ls1285694vsc.0.gmail; Fri, 19 Jun
 2020 12:01:48 -0700 (PDT)
X-Received: by 2002:a67:ee4d:: with SMTP id g13mr9049702vsp.229.1592593308106;
        Fri, 19 Jun 2020 12:01:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592593308; cv=none;
        d=google.com; s=arc-20160816;
        b=jVgUL8qHHcE5qo4I++OEd6tbxrserXPUT8CHR7bjMjKW0t8aD4SW4Do44LPko9STjy
         8FAv7Cm7Ix+EjqwI5AUDr+2NHQj0LD750bjwxzgXeDlguC2bZY7Ao9F1tDPDmEEjpzxy
         TPh9BCcQSMvICqkI0SqfHNIJuPlL1yVHedoQkVhrpTie59JgOOoV0Bdo0fpNIr13Omwd
         VsTzE3XbiCsv/CPiPp8B9XhlUnY81FGEiG6N5tjrR+BPhfKlCtFDxXjRvylZxvAuUu1X
         iS3XWaYbQ6tFkrRgp3pMwKCtx/oUh+ckmGaUtc9wm+DbvlpuUZbU8fntay98ccbfXFZT
         fCUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=K+qwmDFcFa7tUVIZ8v2DX+yXi6DsgvlU/CD6vRYfToc=;
        b=TSsGo6qs7WNDLyGO14aF97xotkFPUIPwzHAzvXK+nXSSwy4qqiJxUaI6j7IWQSrTlX
         qlg9Qb8xk0xXRN6ZNuI/cQ13eaohUdkibhZHXLvApmGgkdJmspUIHg9RALMp3imWmukM
         CtNL+zg4GgR9dLiBura9Tlr4FCEXZ5+SJl9xVEHw7LaB5r7kWrjdS+02wpe/C9fYoWC+
         alZN7u01ksy5WlfRn3y5RQPbB0jaJKtfYulu9GMUH5m4Ls8X473DToZjhzadApHFeFvN
         Bn+/yV6IBJom4P6do5ouYcElcboNj/wbWK7wZYyET/7gwq+lRCUHvXl5RgTOEx2wz4UF
         ufhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="lLjd4sH/";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si373713vsr.0.2020.06.19.12.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 12:01:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 640A720EDD;
	Fri, 19 Jun 2020 19:01:46 +0000 (UTC)
Date: Fri, 19 Jun 2020 20:01:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Daniel Kiss <Daniel.Kiss@arm.com>,
	Anshuman Khandual <anshuman.khandual@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>, KernelCI <bot@kernelci.org>
Subject: Re: [PATCH v2] arm64: Depend on newer binutils when building PAC
Message-ID: <20200619190144.GA20310@sirena.org.uk>
References: <20200619123550.48098-1-broonie@kernel.org>
 <CAKwvOdnAamgwD8UKuxMsZtmAWnY99TwwCQRcFoHBzAmL2U+W=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnAamgwD8UKuxMsZtmAWnY99TwwCQRcFoHBzAmL2U+W=A@mail.gmail.com>
X-Cookie: Sacred cows make great hamburgers.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="lLjd4sH/";       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Jun 19, 2020 at 09:55:04AM -0700, Nick Desaulniers wrote:
> On Fri, Jun 19, 2020 at 5:35 AM Mark Brown <broonie@kernel.org> wrote:

> > binutils in Debian 10) so instead refactor so we require a new enough

> ^ is Debian 10 what KernelCI is running, currently?

The Docker images it uses for builds are Debian based so should be yeah
(it's the current release) but I actually pulled that version number
from my desktop where I reproduced the problem.

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks.

> > -       # GCC 9.1 and later inserts a .note.gnu.property section note for PAC
> > +       # Modern compilers insert a .note.gnu.property section note for PAC

> It can still be helpful to note compiler version numbers (GCC 9.1,
> clang-10).  Someday those will be ancient history, and the kernel will
> move beyond support for those toolchain versions.  At that point,
> having a comment makes it easy to `grep` for `gcc 9` and find all the
> places in the code that can be cleaned up or simplified.

I figured that in this case it's more the binutils version that's the
issue than the compiler.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619190144.GA20310%40sirena.org.uk.

--T4sUOijqQbZv57TR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7tC5cACgkQJNaLcl1U
h9CAVAf/fpnSzeZcmnwbgDwiYmejxxxxM5H0Ztn3CsJ8BrZcyQO8M8jyzSOHwZP9
6n223ROVuBraRyQBMj3MurPAHsXcu7Dq6e3tnRL54rBFLcarcOpjYpLNqKWIhsrk
8g5fbeWRNnOrTB4Gw/VRMSOUfE4pbwgcjjy4rfjwuOOamloawOoVise7ScB4UrRZ
j3tkOUfC5rpwtiWjdqX72VEVS5Z/amB1XUePPPRPRNzlaGDC6w8Q2MUjvetakse5
o7SQJ5bPv2wmuY3cvUT0I3/QLcV9+fCJhHrlEavcXZVFFJpL7BPjbSmxlJMK41yA
qYxmJUe+ahgS+K2ctFP+31QMkx0eZA==
=XjQW
-----END PGP SIGNATURE-----

--T4sUOijqQbZv57TR--
