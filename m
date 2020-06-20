Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBT4FW33QKGQEKDC73DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1F3202056
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:24 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id o19sf8362965pfp.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623823; cv=pass;
        d=google.com; s=arc-20160816;
        b=bMjgrn7wUIHxbrJQmPMAI5TDHwUf+iO6zE4GZAitf80oMAlMfPjSOEUEx+YbUnTp7I
         fAyqjv0z+RafYxmLfVzST3XDlZ4+bY34w64N/ngKg8wSTvcr6q7wV21CpwcRRKkpLLlb
         ZdEvz7HIAqk2e6JX4Us8cRmhhcf+rKeqx2soTAGrDDJEFiX564X+SKTWmEXvEVANw4dS
         o137cG993mKmr2g+bpMkw1KJ1V4zY/PbDWAHRVcdD5pQHJ0ZxlG4Fmc2VQrjM3y7mj/N
         PEVrUJtq1zBYIriRovJv9Szk+MI/cIJceN5pfUKywvl49SXKgAzx+imQAkdnuC9OUSBL
         Qhpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=oTEdR7nwtHaywtdhoJEtbmmOjy43hmX8qSWlur2Rsxo=;
        b=MBpY4h/5223mZIV5ABGb3h7YMI6lfkc7fZ6tyliI1pdth8o+lRpOftYTIWvJ5ZdJpP
         H417uaFp/E8P/qNurlf5IYXE+oXHK6lVj5/JJyGXTbmsPx+cMw9xgL9kJ9sITUTaKHmA
         5BW4wRrQKd53R4M2XLE0aqEmVnXtFmvUXrzuL3TBhQmZOCEtXNxK/D9HaPH2DitgGmpC
         kjMLasK03KYxS8+xlJKvn1fm+JSAOdzSc+kQqP3zb6BOBdb9YkOZg1HiMKUGrrZFfGjJ
         3IkveYtp3Vb1Nh/FUZ1W4KP2zDCz+H6GSTDAPJgY3LqvBB9VPz6v5Wyxvojij1S0IjP4
         N4Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fzu/PCWh";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oTEdR7nwtHaywtdhoJEtbmmOjy43hmX8qSWlur2Rsxo=;
        b=AXo3LFivxNoyZYJzDb4FiQ+3Nic8M/rrlNCOcv85JyNUBXj1vT6wyUQdhNFSDgdrqD
         wKxHjQcNXroWAq5bSILyAWrgTLqjD2mxj8h+I7J0nekww233eX1st4qcxZ7cvtz4bTha
         WCQIrr8tSEwZTnDGT53B78lCZGPV6nsmnWXhs89OnswCoJNhzWWDXboy0CpEEEigZhpU
         eGKO3B6OJjOGIxxr1X10IKRao2iwueQBn/usvDTZRlhi+PFLxGJ//Y632COBdEmqFIlV
         vHdWn6Vldd9BCV6ikFSRdfnKJC4z1ENUBUo36tMVbOJFHpbnWbogFJMBznODbSsCspOC
         MFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oTEdR7nwtHaywtdhoJEtbmmOjy43hmX8qSWlur2Rsxo=;
        b=ZXCHgCwmuVu3qGaSo8ChlB9JmYWFjobUEjDsQb8K/GUoqCaPMt1D4mpGq+jZZaPbzq
         3LT+uxYS3+T0erSqZBHppbSjiPqXFFodqDV7HbcIK+ILPGp+HaBkx2ogv4P8WgpdVsYT
         adFAPZ7eIWwp3icuXd1gWmp3S62EvF5IwaedEhVpnU1raU9wv+dIyWPWW9NI/h8sWFjk
         Sj4vLDir+SYBLjYCVrYYJLOXf0uMKp5iHqNROWgyUM7PyNd0ss2syN0uX6FaUnctNvLp
         /d35BKMkeoFqgJVtps2vmPvv09zPJPzs37Oy3O0mQWM8eq5sB+1xTEWqxsb2lCRCoGK/
         1tLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jS2Xoo1YkdM9x5oGOjg8TaxPg5So2h/jPiuE+Dv0iCoe9/mJL
	LhZhqRz0KrBDi06/dfN//pU=
X-Google-Smtp-Source: ABdhPJzaWE8WlTMSjMKPuOyaV2r9OPe7vl/I/qBeA2WUOv8T0ULYrAmitx/h3OBFHXjj6Z7ZN+8JSA==
X-Received: by 2002:a17:90b:1081:: with SMTP id gj1mr6794991pjb.77.1592623823381;
        Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:718c:: with SMTP id i12ls4538218pjk.1.canary-gmail;
 Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
X-Received: by 2002:a17:90a:fe10:: with SMTP id ck16mr6883029pjb.147.1592623822906;
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623822; cv=none;
        d=google.com; s=arc-20160816;
        b=HO8zJVQPQbXJo6QofVbeEBZt6an4nD0LJpf3KthFQc6M5kg3AbYZ8Fb8QV2fao+OYM
         gzPLbB3PNKPx9sek5x1d1HBN2CeElj/WbRDxYCLsXfqHWWCSUD6IXIepXq0nmi+Q9Vl0
         FJ4G61nRoFtK7i0NEtoVAfU+rj+8kaCZ6eWE4yqa0wSokzXudmGow/NiE0tqn/ERPXdH
         OzTBcXjYxCPTi0wtEP0jR3CmruYrtERqS2F5GYITHZCFklcOGi6ZP/bVLgSSr1sRtVXF
         d/u8zgRXfkIL9oxy5Y36yuX4MUps0tYbZyBLlJHk/uXmyjhPDorPMH3LvLGNkudyzhLU
         kLhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RzFNSuLALDDrnyEKhGNtGgKFtIzldBQWpd31RJVV1bk=;
        b=o6f47Sq0d1D5ACGvxwqSonxYST6iCXacYxn8itAO95rklf2shrD5ayF+sLV3TefXzE
         byygcQePk9qx2h0Ce/opxw3pI9wawdyYxwLI/SDqpvKvbnjiTGoQm22hzRrrteDjNon0
         VOspIvM/Ck0DoQ3NGTE9XA2zHCIlz6URXALccdsKmfTD0VKCOMWSFVNYzMQSnz7n6IHt
         zb+7Skdpe5IbWcVC+adV2ACxVZO0goY6FnCj699JT4EdUGb1ACRgBzsNBsJqOUHz9Hhe
         iwfwx6hjp0vJpXdJXVRhed0mRP8WGOAqVt+zQpfAE8HlD6J/K9w/Yy5KthIQ7RA7QCuZ
         06Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fzu/PCWh";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m204si454929pfd.1.2020.06.19.20.30.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id x207so5380857pfc.5
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
X-Received: by 2002:a63:7c51:: with SMTP id l17mr5231899pgn.303.1592623822618;
        Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 1sm7140732pfx.210.2020.06.19.20.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:59 -0700
Message-Id: <20200620033007.1444705-9-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="fzu/PCWh";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/spi/spi-davinci.c: In function =E2=80=98davinci_spi_bufs=E2=80=99:
drivers/spi/spi-davinci.c:579:11: warning: unused variable =E2=80=98rx_buf_=
count=E2=80=99 [-Wunused-variable]
  579 |  unsigned rx_buf_count;
      |           ^~~~~~~~~~~~

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=3D1TGqCR5vQkCzWJ0QxK6CernOU=
6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9k=
nmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=3DyVJu65TpLgN_=
ybYNv0VEOKA@mail.gmail.com/

Fixes: 048177ce3b39 ("spi: spi-davinci: convert to DMA engine API")
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/spi/spi-davinci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/spi-davinci.c b/drivers/spi/spi-davinci.c
index f71c497393a6..f50c0c79cbdf 100644
--- a/drivers/spi/spi-davinci.c
+++ b/drivers/spi/spi-davinci.c
@@ -576,7 +576,6 @@ static int davinci_spi_bufs(struct spi_device *spi, str=
uct spi_transfer *t)
 	u32 errors =3D 0;
 	struct davinci_spi_config *spicfg;
 	struct davinci_spi_platform_data *pdata;
-	unsigned uninitialized_var(rx_buf_count);
=20
 	dspi =3D spi_master_get_devdata(spi->master);
 	pdata =3D &dspi->pdata;
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200620033007.1444705-9-keescook%40chromium.org.
