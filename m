Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBF5M5XUQKGQEIXSBG7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7C17723D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 21:35:53 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id e25sf33860920pfn.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 12:35:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564169751; cv=pass;
        d=google.com; s=arc-20160816;
        b=ESDggwuuWW6jAmk1re3ik5j5/Xs/vKorGhRTkVRXNSoG7YjhlgGDP/Ap5WwISMh9nl
         7WKHR9UQO/aobFY2zpM4R+momg+Gcyw+nNLTDZEV+uagojaLJxdzJ3gcXMX2Ha39O1gV
         yVO+o/y4MHayZScjYe/7R9BhlEo6REB6e9+mLf9KwBzyIJXMBjHDKPYYvCh0e3wWH9k1
         acg56J7Cy2FrdyjNUuKij5ckUgQEcPUULuUYvOTQBYQSKE1g7MKY25zINhnvRa9nSmQF
         +xnEXayveGXIF7uuauPei50lnuBf7IqekVZGaG7TYYz541psbq2EMJMMby6Ibg+PnY5R
         jG8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=4oiO6oh1dF92y35awAoDB/Q858pZPadC+eCHtkRHiU0=;
        b=nR9Jw+W/w+/XhAYrwpW1HcLdIVzzXeoXtF1qI55D2tlINUJBkt9Nw5FMXyODqs6UBw
         P1ttdw5ikI5qVY5UA4ZwbwlTDaFOMfpW5QjQZLV6CCpSNeRQ/jHUO/Yh0/FSPDAU1ton
         VqKdKeCr+aT0lFfsDJocLsz4Y3/Rdf21it7Z/eDAmNvood7LzW88lyajy/i+qdpxZA1k
         3eQ5b7vZkpgP21O2JrwuRurE02XWhlQ0Lak9p2MKxULUoIcha6Z66X3RhHiN5r3/HJoJ
         E401DdxvappQH+dv1rBweAHxd7SoiOHDizAz7qK4XfQUYEtUp9y7JqV0caN5yuDOIk9J
         MyJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4oiO6oh1dF92y35awAoDB/Q858pZPadC+eCHtkRHiU0=;
        b=QkZo64KNsldXHFKnzvl7Wr0Txhhw67Z3buVlc1PQJyRag+qUugVFYcXTQvQs/Gxxzq
         fFyKn8gh2T4rmwSVSxLo45L5re0bWxHm4fk0K8sD496qcJGuXt4VvnsMeK5s+oy8ea0i
         kKI7c52F/ni6tGBzTd9IbAUMhxSe/E1PVk23T42WzQTPDnfvUxr0KsYJUx/XOrcuy2OS
         8nwlMYe/sRlCYquqifgwNjDFyW51tPtjEBhJzbUBvRaNb1gTnhrZSBzdZw/y+AZp1PPq
         yKujN2eCsOuUgFOKOvHt4I+E5nYg+8xRxhlW8t5dlDGt7LRbZJc6ju5AsrdHl5OEW4H/
         wqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4oiO6oh1dF92y35awAoDB/Q858pZPadC+eCHtkRHiU0=;
        b=WhuUBha4LtQTPbGS5b17Up6FSafjpBqG83bUuGik2R1rY6G+LO6zGAxprRvUoVML64
         htaRfj4epOo4yA7pVsgnfOWrH/D4vlrYuCxbeTLFd6gQep1lD0GEgeJA65auwIkwuo7t
         so2eET0CjjR6H5RhyBeejFxqZFeLDNGMvl0WsKl1DVe/fj5A46skDNtAe7DZWv2+4Zhy
         zwZrSSkIQ3Izfh0taKo//yMKHdfryDk9hPbDvvpx6baMt3sC5SMacLMenI7RQWRwzAnR
         u7Zk1Rh5YRJbHzLQZOuaNGZts2Ln37Y1Ez6bz3IS7DAfqZEQLim78+9EDK/dFHf2IhVb
         I7KQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWn5hlbRJygTKXPqj2wROrTOxg4dTKAsTir6ehAnvkWuumb8Lxd
	BW/F5fzdK90XdZ1UyvNQp30=
X-Google-Smtp-Source: APXvYqwoVpJ89FfvJaOSlp/7jCBYF/As5K7duTLssZyHBLHttCBrhw+QA924D0hmA19mvTsm/STRlQ==
X-Received: by 2002:a17:90a:a008:: with SMTP id q8mr100619744pjp.114.1564169751647;
        Fri, 26 Jul 2019 12:35:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4302:: with SMTP id j2ls2463523pgq.6.gmail; Fri, 26 Jul
 2019 12:35:51 -0700 (PDT)
X-Received: by 2002:a63:1020:: with SMTP id f32mr63618471pgl.203.1564169751175;
        Fri, 26 Jul 2019 12:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564169751; cv=none;
        d=google.com; s=arc-20160816;
        b=j+8tk2RVgjoDXdwP4ztXkK2843w8oBli9cTxAvxOAdJw+/zqacUSLI95PA4lapWjxx
         PzGtQqzkExdrUpJN3VBVDALtWGNnI+K4q7oFJdj4x+ZZqH4FGgE29hoEvCwoLEGhKs0+
         7ao4PuUNB7vWxsQqeUekd+zCYOsh9yX2LnEhB7nz5Qc6uzPzSl1gkfaQ1vW66ynq4SX+
         d6d1jKD4hFaxqXkUjq+Ru/dYzVwrUcctAGqC6/9LPEOnK09rW1z60J6+LtZhcRcSNGl4
         8VJHpfS3TXuUdSEKGLqW1kINaAJksf7DcEYdqd/D/DsPqVdGm9bP2wpVSD6lsyJOZOfX
         50lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=Y6WFpqSkdWFJSQlr6xUfrWGSt3rrDB3x2GHa9mSYjX0=;
        b=TeToMRYVasdEH26eyGMXGPBfi5ShMPZhMTeUc9qyy9SwtD8RzEfVDsv4faKf3eZH2C
         6pkth+hiSk+paPFWAJs3n2SS3Eq9PoUlFVBWUp2pcP700UYfp6Nxitq3rPa4lR1yDpjw
         3icW3vgNCeuV07l28RJ2zY2lzH8YWpvBzsQlkMic3jLUMT20E4ZVppfrq1/kgeX6WUR9
         Vv0zhM6KfXsW8OqVuujG5+TJ5F8n4sfMsfx471IlR2bxSN0CO3YbnhAQfOT7LEavVCk9
         tsNjAoyzjvB51D/B7f6uNCju3UY5neVCMHyt79TAVFchLE+f2JlYgZoiFKgop0W+E1w7
         OdHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b22si2017715plz.1.2019.07.26.12.35.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 12:35:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Jul 2019 12:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; 
   d="scan'208";a="181973736"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
  by orsmga002.jf.intel.com with ESMTP; 26 Jul 2019 12:35:50 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 12:35:50 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.246]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 12:35:50 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Qian Cai <cai@lca.pw>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
CC: "Schmauss, Erik" <erik.schmauss@intel.com>, "jkim@FreeBSD.org"
	<jkim@FreeBSD.org>, "lenb@kernel.org" <lenb@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Topic: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPaHylXmfzBauvEybJLDaugeeCqbdV0WA
Date: Fri, 26 Jul 2019 19:35:49 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
References: <20190718194846.1880-1-cai@lca.pw>
In-Reply-To: <20190718194846.1880-1-cai@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjJiMzAxZTctOWE5ZS00MjJhLWE4NDAtYzI2NzI2OWNkNGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRWo5bWtmaEIrbVlsZUZ3SVNjVVwvR3dsRGdcL2RCa0tId2VMSUZBYndYXC9SdGNzbk1hdTQ2QkFaWHZvV3NocGlhWCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=robert.moore@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

We've taken the change to ACPI_TO_POINTER.
Thanks,
Bob


-----Original Message-----
From: Qian Cai [mailto:cai@lca.pw]=20
Sent: Thursday, July 18, 2019 12:49 PM
To: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
Cc: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik <erik.schmauss@i=
ntel.com>; jkim@FreeBSD.org; lenb@kernel.org; ndesaulniers@google.com; linu=
x-acpi@vger.kernel.org; devel@acpica.org; clang-built-linux@googlegroups.co=
m; linux-kernel@vger.kernel.org; Qian Cai <cai@lca.pw>
Subject: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings

Clang generate quite a few of those warnings.

drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer treated a=
s a cast from integer to pointer is a GNU extension [-Wnull-pointer-arithme=
tic]
		status =3D acpi_get_handle(ACPI_ROOT_OBJECT,
obj->string.pointer,
                                         ^~~~~~~~~~~~~~~~
./include/acpi/actypes.h:458:56: note: expanded from macro 'ACPI_ROOT_OBJEC=
T'
 #define ACPI_ROOT_OBJECT                ((acpi_handle) ACPI_TO_POINTER
(ACPI_MAX_PTR))
							^~~~~~~~~~~~~~~
./include/acpi/actypes.h:509:41: note: expanded from macro 'ACPI_TO_POINTER=
'
 #define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,
(acpi_size) (i))
                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/acpi/actypes.h:503:84: note: expanded from macro 'ACPI_ADD_PTR'
 #define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t,
(ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
                                         ^~~~~~~~~~~~~~~~~
./include/acpi/actypes.h:501:66: note: expanded from macro 'ACPI_CAST_PTR'
 #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
                                                                 ^ This is =
because pointer arithmetic on a pointer not pointing to an array is an unde=
fined behavior (C11 6.5.6, constraint 8). Fix it by just casting the corres=
ponding pointers using ACPI_CAST_PTR() and skip the arithmetic. Also, fix a=
 checkpatch warning together.

ERROR: Macros with complex values should be enclosed in parentheses
 #45: FILE: include/acpi/actypes.h:509:
+#define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, i)

Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Use ACPI_CAST_PTR() in ACPI_TO_POINTER() directly without
    arithmetic.

 include/acpi/actypes.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index ad6892a2=
4015..163181e2d884 100644
--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -506,7 +506,7 @@ typedef u64 acpi_integer;
=20
 /* Pointer/Integer type conversions */
=20
-#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0, (a=
cpi_size) (i))
+#define ACPI_TO_POINTER(i)              (ACPI_CAST_PTR (void, i))
 #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
 #define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (v=
oid *) 0)
 #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
--
2.20.1 (Apple Git-117)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD%40ORSMSX110.amr.=
corp.intel.com.
