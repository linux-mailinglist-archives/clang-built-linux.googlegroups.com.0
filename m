Return-Path: <clang-built-linux+bncBCLI5BNJSAJRBH5B234AKGQEG2CAVPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B85225EB5
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:40:00 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id e7sf9153463ejj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 05:40:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595248799; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y5xyrZYI3koFhyyeV15em5uSaGz5kYxgnoGwEket+GAtLaW+MpJLCi4PKN5bQ23R2z
         vu2uJgkQRRi+OwcmI5OASpJElnUAaTkxWb5W8kPDrDHjIvGv6WMizd95h6WZVtZuIqNt
         lAhvfUJRhHTTUOlV/uPcIAruOpafoP/A+S8Bnzlyqubk3Qj84u/zPBFwUdjcSY2p/Qri
         5F4zwUBTo3M+4RLS3dtp2frcRNZDTyEGUGR/8gHIWSXamo5ph97yS+1R1W/H5dO4Z4ce
         GZmcilof9wIosqbpqZGXS8pNebUz2Dd4SZ5rllurzt9dLMvzOKUf9vfV+fUR7eY8uRj1
         MS+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=79troQ8dVQTLrggOC7C2w4gY/4mVfP9+/CKJznFPVWk=;
        b=WWEZOi8IQU2fESqrREewceZaGomK7D48oxw3CL9syE+U3R2zcWhxnpPwTnytNAj8qp
         /PfzajVkZvoWiRhPKq7HWsCrov6KNwx3B5TDlgTcJ3gCIZqxvoaODU3xU+AyHA0VVeWN
         nVeXDfNvPf0Pmh/ovOtvEgYimOK665Pr3XSoFfpMJJlrNqqDSrim3mrYbur1RJXzhGGn
         mFH0D/aGTyr6vGa3ZYzZzu3TUBFIC9uWlYtqvg43O5MhjOr7IyBqXmSWz1G0LgV5kTf3
         fCAMHq7T4+8Oa0RjhFbRhTscvGLpGzhnYaqTUH7QWD5XWpTxKv9GxCk3+JFVC3gtlQEj
         EsjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of steve@sk2.org designates 46.105.36.172 as permitted sender) smtp.mailfrom=steve@sk2.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=79troQ8dVQTLrggOC7C2w4gY/4mVfP9+/CKJznFPVWk=;
        b=ZZyRIKpUSNJsCjQWDC07RYGkSHKk+LuGrl3J1nA/UuEgBkV8B95pCKIfYInqs7sedl
         trvHxxiNSFSPDQrhIGkTMN/3LyntlJPHg4jwvW01w9SGolDLW72XNyrJKzCvRUzq8qC+
         EOw4dtjVPc6hQqsgmfgwJB4m9PydhssqX07y0WiPjP+UinaqmK9CUsTo6FrLDqEI0POT
         jjTOD2tGMYE5g6it5WeeJ5yqxx+so0ORPm03yWmKCJkXucrp93Hvd5SUdlMrUGJwYNAu
         9mIwG7Ul9xCAJK2BkrHfKon0wsv3F3nXhpTaISlKN1BTgdM2gm0Fcsi4TIX+wJ+JN+Pd
         FtwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=79troQ8dVQTLrggOC7C2w4gY/4mVfP9+/CKJznFPVWk=;
        b=bBIgWJzRhX5ruC1Q28eYnK3h+zf15Op4BQ6pmSXxYsJl3zXz6uZcn2WU3CaYJ7g5n5
         tHKxk8KJGvFkXKnQyv4RIeyuhcs5tCx1OW8t1ay3bNpmsA/+TuJUXu5CTplKYDZOktqa
         TiOIhPH1kzAsHSf4zbPoJDe5x0GyPATsxkVrXLXIOWfWNNm16Bx7/1spjMWTTjfWQoys
         kINLGnsqW1xTG91R/SOidyv82bZymlNBqNWC4RHzycYkDaEPdUiV2IGUFQTg0JZxeKw0
         DuOJz8Oib8hQzqmeBev2BmIq7b6lFZ7UUdNOndrXDv/IvgDLz+PyvCOTD9QFTWP2ilGs
         zqrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53149fzszceB63phM5/vKuCRKorUXDdvFXh0uAsFQxh520X5nmPn
	LVS/wIsOXVnDD4EEys+CFTY=
X-Google-Smtp-Source: ABdhPJxHyxzg9g5KeHQ2P75BQ6V+Qc6p7I+BFmnZKyuFbDrXKQSp97NUnaF4flq1gqx6XxSiJOk8zQ==
X-Received: by 2002:a17:906:45a:: with SMTP id e26mr20238977eja.67.1595248799767;
        Mon, 20 Jul 2020 05:39:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:cb8c:: with SMTP id k12ls74078edi.0.gmail; Mon, 20 Jul
 2020 05:39:59 -0700 (PDT)
X-Received: by 2002:aa7:d285:: with SMTP id w5mr21998278edq.174.1595248799193;
        Mon, 20 Jul 2020 05:39:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595248799; cv=none;
        d=google.com; s=arc-20160816;
        b=sXXo4GIXvdhwabRZLlxfIK7BoJtWcls+WAVuTIKxtjrvtxmUspyOPc710znhIJlQkg
         Z+5NS4r3MuiOfhG/62foh4Y9qX6QH4DwcCrtIx/4R7jQ4On1sHUfg7mkLSKDCbcGjlI1
         HpvoqWGlyEeoStjXv+jR1AAkQnYKwXuHkUvEUhiAFZRAefgO/OS+880fJcQhFwyNXYAm
         MQumi4AeMdSvuhnVODPQj13Wf/60Cm6hFP4rWhZq97zlHWKkPT9H5qS6ZKwJBVBXHKO7
         gYXDisVXg5FR7+PIGH0HkYfxAfB/l5aR+D0AFiWHqOmW4l8OujqTDEcUs8tn6FJnJuPe
         LAnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date;
        bh=FIDPuYCvW3prMwlCHicVQq0778ILzDCT5YpXLzTtkTg=;
        b=zmib2dMwOgiNr2gG2SBT33ViOgez3+F3nzW89m4AviZT4TimGHSX10oQVag2apMnpO
         rMUfS2C8oObqbp0WlbH3+kWcfhKWJq+TkrKfFYkQ3qGWR2pzX6WV6bqGKFKRwRKL8byr
         1um9FDsz+bbZL1Skbdt0gA5hTL/TQV571seSeTHuRqdzUeVT1Ht2Lcsv41ebtgdHBNtI
         nWIIUCUv0vw8BWliuPSZwrkPmTJ6AHSLyjtSH9AUxTkDI/Cm5DszdFF4sPS9QoT8pzxS
         dPXKDtQx5owJA+pdQZUTdT/sObthsppVdkquHwoYduYqujAarlGOKpxp3wkzcHE+AR4o
         l1oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of steve@sk2.org designates 46.105.36.172 as permitted sender) smtp.mailfrom=steve@sk2.org
Received: from 3.mo177.mail-out.ovh.net (3.mo177.mail-out.ovh.net. [46.105.36.172])
        by gmr-mx.google.com with ESMTPS id k4si703724edl.4.2020.07.20.05.39.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 05:39:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of steve@sk2.org designates 46.105.36.172 as permitted sender) client-ip=46.105.36.172;
Received: from player796.ha.ovh.net (unknown [10.110.208.168])
	by mo177.mail-out.ovh.net (Postfix) with ESMTP id BA1CC13B5ED
	for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 14:39:58 +0200 (CEST)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
	(Authenticated sender: steve@sk2.org)
	by player796.ha.ovh.net (Postfix) with ESMTPSA id 6D8E41471EEFB;
	Mon, 20 Jul 2020 12:39:39 +0000 (UTC)
Date: Mon, 20 Jul 2020 14:39:37 +0200
From: Stephen Kitt <steve@sk2.org>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, gregkh@linuxfoundation.org, tyhicks@canonical.com,
 jpoimboe@redhat.com, jkosina@suse.cz, tglx@linutronix.de,
 keescook@chromium.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] docs: process/index.rst: Fix reference to nonexistent
 document
Message-ID: <20200720143937.00b47310@heffalump.sk2.org>
In-Reply-To: <20200718165107.625847-5-dwlsalmeida@gmail.com>
References: <20200718165107.625847-1-dwlsalmeida@gmail.com>
	<20200718165107.625847-5-dwlsalmeida@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/G1ltjrPvjS1uwgqPa15+ffG"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 10420766588460813694
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrgeeggddvlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtvdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeekffdvhfejkeffudekhedvtddvhfeiheehvdehkeetkedufeejffeuueevvddvnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejleeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopegtlhgrnhhgqdgsuhhilhhtqdhlihhnuhigsehgohhoghhlvghgrhhouhhpshdrtghomh
X-Original-Sender: steve@sk2.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of steve@sk2.org designates 46.105.36.172 as permitted
 sender) smtp.mailfrom=steve@sk2.org
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

--Sig_/G1ltjrPvjS1uwgqPa15+ffG
Content-Type: text/plain; charset="UTF-8"

On Sat, 18 Jul 2020 13:50:59 -0300, "Daniel W. S. Almeida"
<dwlsalmeida@gmail.com> wrote:

> From: Daniel W. S. Almeida <dwlsalmeida@gmail.com>
> 
> Fix the following warning:
> 
> WARNING: toctree contains reference to nonexistent document
> 'process/unaligned-memory-access'
> 
> The path to the document was wrong.
> 
> Signed-off-by: Daniel W. S. Almeida <dwlsalmeida@gmail.com>

Fixes: c9b54d6f362c ("docs: move other kAPI documents to core-api")
Reviewed-by: Stephen Kitt <steve@sk2.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720143937.00b47310%40heffalump.sk2.org.

--Sig_/G1ltjrPvjS1uwgqPa15+ffG
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAl8VkIkACgkQgNMC9Yht
g5zYyQ/+PriM4pJoTPsHS3SErNTVbeZisEts37yOOuhYiDxzm4YKbmwB7gUcMgWr
H+0eOanfto2X6wh/vSnnkwfZD/ifJLP/eDYryF1BgUL+xi18IDoFobNgq8db4OiT
5VXohSNk6O5Sc4dZcb96RKJ5J2lDjrqJO9Psqa6C30ZYLVcGxh6Mu6D2zriOMWST
Lk7Kp2PJoFljnkU46ZZjODF6EjrBouYmTyX4UkYYIl7OfaQ7VF4JGcBLMiTtYdK3
NbmPvMJry5V7SHSX/RdxnrPq1XeD8mjHK8sdMn+IPpYoz0CHxkKj5OguGUK3MXnT
0/9iJIsYb7SG4Y996Ym3hDrowxEnoexuYk06wSOOomnF6YtM/Rhzx5SRoqG1lssj
25/hxzUdw+3nb4ROyAuAgkYCGy5qXo6JF8lL321tO0/wi0Dk+OHzW1KbtEyFkFkx
xUPCfEmKiHJq71hCWcenE/I04m8oRSTAqoxM7JyS+XIGA8LbxhY9glPqOdaX71dV
GMWKUKF1t9j0UOVwN9JfpTGxRkgBhOI909Zp1guBPAADlCmZYaVLYDFUesYCpCWC
i7KyWshGumH4HrJh+csNiqD/0mvLRdcr7rBmIudm+CdkobzUTIvruo28Vhc+OeP+
4JI1mgedlRAm0HqDj71Kw8nJu2F8iPhbXJy7Ulu/uwIipOQLRP0=
=vV5J
-----END PGP SIGNATURE-----

--Sig_/G1ltjrPvjS1uwgqPa15+ffG--
