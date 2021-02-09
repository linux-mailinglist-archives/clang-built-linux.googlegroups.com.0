Return-Path: <clang-built-linux+bncBDK735VZTUKBBPPKRWAQMGQE5E42Z7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F26315F2E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 06:55:11 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id 11sf1271716ybl.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 21:55:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612936510; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jvd9l6lTK0jqKLEXkFU57WaqsD6bOfxbChinS5PHUB56JmYCCwwv4GUu18dhgGWurB
         KTfP2uQX21o8J8vW+V9kTLLvZCO02sKuzv4tlf9BwVZHemD0jVdVq0/1RN5avrKCe0ek
         YRWiAZHJbvpdBTl7f8gyxbuGVa9mnwv2CtYD6tb6+mQKtfEa3U37IFHWd2HmvWhPFGTT
         H/WnBWzIg10KJqcJ2Wg7NPhlN1vxYh2yQart7vRJEH3OKV6GiIbpKpNrpmMxrTroZuw1
         DnZ8YbLrx0ELJhEHU9KwOBu5U3waphXdMB4GTt7NCfe8Oq+RZo0gSVBfxqNGlB4uyxU9
         CUCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:reply-to:date:from:to
         :subject:content-description:content-transfer-encoding:mime-version
         :sender:dkim-signature;
        bh=ivaBook2GtZ2KQl0aodtkaRJNH+s7lKzgA2zvXEUsio=;
        b=YKcINktVj9Qb+Z4pri0jPy9oVAmOt+xni/M8i0fIHHBR/CkbzjLJmXAtQwW3U+xebc
         9fZwsPHLuK4zcl3u3PRCeQyczlBjkl3NGU/Y5iR79av6ZjPOdkRgcJDcDxxpSQ65ySwf
         isABxqhv+jl0YKiI4akEj60/IUyH+PEC3Mvjiu32gJNGPuoxnK8r0vYWy7Sz7Wvhy5a3
         AHDFuxk5O8bk2+LByGQBqO7w8QhafZlnSh0DNZ7FhvkI+5w3pRI7l+zsn1YexjiIRTTk
         WVspMbrgpgBFNJL3piCG4PUFY40jpRAzpTCQORSTZGlgk3OT7pO7OJvOtiaAFA8CRbAC
         +QnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of januskad@auroraoh.com designates 24.56.89.101 as permitted sender) smtp.mailfrom=JanuskaD@auroraoh.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:content-description
         :subject:to:from:date:reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ivaBook2GtZ2KQl0aodtkaRJNH+s7lKzgA2zvXEUsio=;
        b=lNOeT5Vwj/mqADzSZiSpXNRkUg9/AOuPp80xOhmVMYx2PazUvKjQgs4fwSL/ePfR33
         2sP0uLE3gqp3/gXpAGUh/4bmpQUqgCW1Qa3GW6ZbeCYeBwds2B3dpxGq3EC0sbWw7Koz
         UKAU11kkNBR6aG5KPbMADiUdMQtb3lrrRzr6QODqWZLPPm3joZwjh1z2TWs/fsEL39Ev
         vxAQfGD1PbZINuvX3qXYfBJ39LnoIfCuT8AKv6dGdfC5JThDkJxKcBhOi3LlxUTFGeWo
         Q5iM4RXlkF9LGSfV85b22jkGe5P+Q7u7Tw0jnQu1gKmjkaFRVZ5g3UMHt/0lhvAZ2aGS
         vNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding
         :content-description:subject:to:from:date:reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ivaBook2GtZ2KQl0aodtkaRJNH+s7lKzgA2zvXEUsio=;
        b=q5lNBw3dBeYLeqoZ8Zv21Gpozlf31MF7/gKqEad251Q4uxUkYr/XG1AIyzBo4eO1Ei
         652dMAWL2i4O9mk+ZdMPQMvbUuZeJutVX4PxswsvoHRibKVKzUrlCUcvmnF3I0Wrfa2k
         sB3Mz+rXqHwUwwhaKSi/1aMAwxm1Gw+/xcDBg0AkhY8kabFLHyO6Hk6gPXj5jp/zUw2v
         H7wpDjbch2Fhg9c2vI24CFqQKRPZCsxNAxQd7t33N77WDyZ0R2F2t596+PiT9P207b4o
         0lW15y59UirDnDlA9UlpgLDt/omKVcy2lrbQ+2IBZdjnMwmkSKNZES5m2cgCiQuiE24T
         R/6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UMRuT5NTwMaglZOJ0riU0hSLuQ2bWCBjMp0sxwfRzQ7vSKjjN
	JDIRHBlNz1virj8hanp+8zY=
X-Google-Smtp-Source: ABdhPJyYqbBXnsEw2X6V+xWRdF6KK5hk01D3IRX1YIDMq8IDho1m4yN6rzgHPxoW9iiMWNp44pCgug==
X-Received: by 2002:a25:74d4:: with SMTP id p203mr1904796ybc.75.1612936510140;
        Tue, 09 Feb 2021 21:55:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b5cb:: with SMTP id d11ls480659ybg.5.gmail; Tue, 09 Feb
 2021 21:55:09 -0800 (PST)
X-Received: by 2002:a25:6905:: with SMTP id e5mr1978128ybc.54.1612936509749;
        Tue, 09 Feb 2021 21:55:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612936509; cv=none;
        d=google.com; s=arc-20160816;
        b=Ld/7ihw8iCLVIjdD7k93Thv+hW0atwdT2M8ALhf0Gi5tzCh6VEbh8PvQB6DZHrQMoU
         7yeFMJ0GViUsVUsnlhvWC0Jr73hBwV9Nxm4Fl+7wZGyFas2ILVNtq9KxCpQD5bvywUc6
         a6l8G6I5Ir24moJv5n8S7oUwUucMYgzLUQE8OlNJ3IhWIjdCZKZCufmBl1ROiV7OE8xU
         th7RwxqeFAHflFi46/fCDqHjNb2z527XhgELNfq3BBPZHXSozG8Jpg3+2F8V2MSBFbXm
         E4lwIBgxKMWv/k8lnkOShPEVCMgkyMchALtam1Ro8Nodt2ykHCiIF8FdfGz3mBcqg+gr
         ghpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:reply-to:date:from:to:subject:content-description
         :content-transfer-encoding:mime-version;
        bh=eJgL3jHJnaDe9AnfnBPzJn14GPEE7jwMWbn78ZDLOI8=;
        b=0ifwKW8JVJ9dkcHtys73He6RaZTfKDO+VA0chgZmHJK6xPZy+127xsWzwL35VV7swq
         Y7nWCQ2WV7mGK9uevOQ1kHQJphCXgF1MZ0oLOKIof4Jyrqo43LhN8Ukbv1KOZO8lSNkd
         FT11X/3UuZMtcXBJDNPUQV0gTr+bIgtG/iYsvFpmWP70rQ8OFtgmapTtJ7xzU6Wx5cyX
         d4iQQ9DsDvP747FpSEwEaQf3aBy4REYjRT5yBELRexPbdnycDZRAuQLJL8Ml8W9aQ64I
         wNMMELfmVDwfzNQdJmdRXZW9zVQtlbe3zyBzqIFg1rR0ffzjT/k0gzaPbv7VDHhgWo1L
         Dxng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of januskad@auroraoh.com designates 24.56.89.101 as permitted sender) smtp.mailfrom=JanuskaD@auroraoh.com
Received: from barracuda.auroraoh.com (spam.auroraoh.com. [24.56.89.101])
        by gmr-mx.google.com with ESMTP id c10si64867ybf.1.2021.02.09.21.55.09
        for <clang-built-linux@googlegroups.com>;
        Tue, 09 Feb 2021 21:55:09 -0800 (PST)
Received-SPF: pass (google.com: domain of januskad@auroraoh.com designates 24.56.89.101 as permitted sender) client-ip=24.56.89.101;
X-ASG-Debug-ID: 1612936505-112c0d6a799c710001-xvZge9
Received: from COASRV-MAIL2.auroraoh.loc (coasrv-mail2.auroraoh.loc [10.3.1.15]) by barracuda.auroraoh.com with ESMTP id XQeYMohorYfhN7Yi; Wed, 10 Feb 2021 00:55:05 -0500 (EST)
X-Barracuda-Envelope-From: JanuskaD@auroraoh.com
X-Barracuda-RBL-Trusted-Forwarder: 10.3.1.15
Received: from [172.20.10.5] (197.210.29.8) by COASRV-MAIL2.auroraoh.loc
 (10.3.1.15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 9 Feb 2021
 02:43:16 -0500
Content-Type: text/plain; charset="UTF-8"
X-Barracuda-RBL-Trusted-Forwarder: 172.20.10.5
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: We are a registered Private Loan Investment Company in the United Kingdom,
 we also registered with the Turkish British Chamber of Commerce and Industry
 (TBCCI) we have operations in Europe and Asia.
To: Recipients <januskad@auroraoh.com>
X-ASG-Orig-Subj: We are a registered Private Loan Investment Company in the United Kingdom,
 we also registered with the Turkish British Chamber of Commerce and Industry
 (TBCCI) we have operations in Europe and Asia.
From: <januskad@auroraoh.com>
Date: Tue, 9 Feb 2021 15:43:15 +0800
Reply-To: <cfolimiited@gmail.com>
X-Priority: 1 (High)
X-Antivirus: Avast (VPS 210207-2, 02/07/2021), Outbound message
X-Antivirus-Status: Clean
Message-ID: <8a74435f-3c35-4b52-8955-3a1b291858bc@COASRV-MAIL2.auroraoh.loc>
X-Originating-IP: [197.210.29.8]
X-ClientProxiedBy: COASRV-MAIL3.auroraoh.loc (10.3.1.13) To
 COASRV-MAIL2.auroraoh.loc (10.3.1.15)
X-Barracuda-Connect: coasrv-mail2.auroraoh.loc[10.3.1.15]
X-Barracuda-Start-Time: 1612936505
X-Barracuda-URL: https://10.3.1.12:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at auroraoh.com
X-Barracuda-Scan-Msg-Size: 755
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 1.61
X-Barracuda-Spam-Status: No, SCORE=1.61 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.0 tests=BSF_SC0_SA609_NRN, BSF_SC0_SA912_RP_FR, BSF_SC0_SA_TO_FROM_ADDR_MATCH, NO_REAL_NAME
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.87878
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 NO_REAL_NAME           From: does not include a real name
	0.01 BSF_SC0_SA912_RP_FR    Custom Rule BSF_SC0_SA912_RP_FR
	0.50 BSF_SC0_SA_TO_FROM_ADDR_MATCH Sender Address Matches Recipient
	                           Address
	1.10 BSF_SC0_SA609_NRN      Custom Rule SA609_NRN
X-Original-Sender: januskad@auroraoh.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of januskad@auroraoh.com designates 24.56.89.101 as
 permitted sender) smtp.mailfrom=JanuskaD@auroraoh.com
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

We are seeking for beneficiaries who source for fund to expand/relocating t=
heir business interest abroad. We are ready to fund projects outside Turkey=
 and United Kingdom in the form of Soft Loan. We grant loans to both corpor=
ate and private entities at a low interest rate of 2% R.O.I per annul.

We like to grant loan in the following sectors: oil/Gas, banking, real esta=
te, stock speculation and mining, transportation, health sector and tobacco=
, Communication Services, Agriculture Forestry & Fishing, thus any sector. =
The terms are very flexible and interesting.

Please contact us for more details;


Kind regards,

Paul McCann

--=20
This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8a74435f-3c35-4b52-8955-3a1b291858bc%40COASRV-MAIL2.auror=
aoh.loc.
