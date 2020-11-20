Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBLHR3T6QKGQEBUYY7HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDCA2BA12A
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 04:31:57 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id s1sf3548524vks.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 19:31:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605843116; cv=pass;
        d=google.com; s=arc-20160816;
        b=QhvGDEZ3HR9cYI7I+1rTCfLMSiZ19/A3MVNn3mjg/S0bWLUyaOIScHLbynoMTTlXYY
         GkFtk6lQ16pJ8J7CfrDchrFRLXib9ehxLVd52yZWXIMGiCvAjfV5d2/noy1bpDrkWhwV
         OAYQoPBsr/MtQG3IWWIdzxjz3orYxWN23/VAXNbNe4o1mmUKpktJue3hrCYBs3R0fdEU
         HppWhGro5YbEEXJZ/pRGiUahHqgLdyGRMujaljk/4wPDOn+W2wH3eMZfew94LHNTl/aA
         an8xUL5a7TvUhN7ePdVe9D9IrWbnORy0I55+3lLsBrx87WKrxzkl+bNl+Z3kCkzrPflk
         XupA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lTpr/+qa6azbmmCw85+x+SPU1JqygwoawphPLrS2Fo0=;
        b=AJiKorRZK/HQ4SP1UJZg4kiTWG6a+Bh+XzDgLV4v+DGsah2qHLOR84EEAeSvZKiBfX
         kMXZUpeiVQL+2BAo5DWlyskTAMGpT3RGdOY9eqRS9/G9E6o1ww8rECUAgwLDYz4i2tIR
         LyxwYVau+16vpq/4vQpyKo6XFp5tIWPnecqnPOQZhqy5Djs7R8yZz1rEK6iQ5a35d/XE
         BKcqybdVZkEfU2pMDX50oGe5w5gucUTwzDx6mkPc4jEqFzBqG/secqx+yuVaOwkhhRgi
         XV9SxGOXiMHui3a5WS7PZs+aEeMWSPFKj2i5OIf2JURuAcmlngQRUejax/vcMw8gVKET
         Mreg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=bcpIPdON;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTpr/+qa6azbmmCw85+x+SPU1JqygwoawphPLrS2Fo0=;
        b=WCiqqGmpuvOBbaSZX6QDFNQCM9rS1MLXr8AFUozUjgKFtYl/U4rpfZ8A8saOSQZlgG
         QBtsY0ZNbdpbxPZvmsYomX1yRDejUKG5qDhjHH1iB9MtqaovvBZtgpuRdI/puzRS6Nk/
         ex9x+8XsMU/JpJXe70oviuUYybgCfDjAbh67OlLHJUuiNfEi2FSSFOXB2+agrLJRUCcU
         nQBP3c6CVwaozv9f5kxv8mwMeNZWbsMtmipFS9CRTlbxuOCxNg3K7NP542aotcv0GVSm
         zpvWaeYbgo57FBIQUflW/yep7geNkVKame2SB3xJ6DPOXp95U4878NyUxC4vNJEa5vUT
         xSOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTpr/+qa6azbmmCw85+x+SPU1JqygwoawphPLrS2Fo0=;
        b=gfocPJu0YkyfKVZYbJKac8D8j652QhZwsuE9NoCaSrPRVteE8xU8NT5m8fIuFMddAa
         CnOsc8cp3FM9IYox4sJHyhDBdKQkm+zBQiJm9U7m4B20tOdcIKeu2/SnHNCx3TxR863Z
         G618VbsUrssNWaOjQDLF8SqwsokEVH3TcELs00uvIv0+8Hb9wwP7A1qwfDh/A7TY3HUG
         oWHyXos+wcEkcHRLY7yr6cQm9KwDjsNLDzjd/YQBqy7oG3V61EioHprexZW+VlMYDmj6
         KwQQVt4ofomWIPiZtXoGQtwEu0DkHX2ZgXMi+dyGxg0Oo+UyW4LZy/Zeiy3nG88iry8J
         Tjsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532637jtEqLA2Ck5ZUZAvkapwQbLlI3EvP7tySSUvOXbG0rqz3qk
	E8aHQyRKkzQcStAdftrc0mY=
X-Google-Smtp-Source: ABdhPJx+XlCy8U8gTxJJXUynBNtIU9QSp49n1sAmaHRhdDbMKVoOKhpgGN2CvrV/IaCAqrhK6/Fd7g==
X-Received: by 2002:ab0:1c04:: with SMTP id a4mr11583825uaj.55.1605843116315;
        Thu, 19 Nov 2020 19:31:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:36ce:: with SMTP id v14ls295228uau.7.gmail; Thu, 19 Nov
 2020 19:31:55 -0800 (PST)
X-Received: by 2002:ab0:4972:: with SMTP id a47mr9381596uad.53.1605843115868;
        Thu, 19 Nov 2020 19:31:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605843115; cv=none;
        d=google.com; s=arc-20160816;
        b=JN8yLBlsRR68hpedlwFCk8IsHLGegkJ0h0wjgbXGaB6IqR4Fz/rYwky9X7zdfhrtCV
         FjMa+GQfAtvryMUHZf/YxK5X/4fnz4KrPJULElAUgdD1ZX5PjX/f487KxHheAU9SnJF0
         HtSM1kn5lWisopayWk9TtJ5oeQU/T2U2OdIB/EEEkZTTMOd2sksXU2mrFAw2Hw3SN3gs
         JUlJ1IFexCT8FfmUXfN137NzLz9ptNgpmIGbxPmDBCrXjIg9ZlE3huNmF2p9Sux1tc6V
         5QWb5jWezTyqH+gV7P1+IMOtrqbZ1pSdPj9n5eBMaMZJeGkmLpb+Q89/PT8te+B1vWwD
         4zWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jZzw6NnBwJsSdZ8FeenVzB6ax163h1FH9Fc2vam9rOo=;
        b=g5leIynsA2IDJQXHMYqzzglzo35zyT8EidYl70AzZa8K+1/eGQBE6lyGTPZlOA75a7
         YB7DhgvW4JvcfVOXrmMxSa0MXoiIa2jKMAxwnXMr7fAG7W4ktJdlkTpp5MknAMrBZEUe
         IGs5a38I1cCepEM7U1QhGf0F1c+rf6LetwZQXJS2Kb4S0BiHNPUL2E9f7KV2c+bQtkDW
         1z7sczS3CY/H8ZasejQ6Z9dlQKKWR5rIJcmCzIxrBa4xjVFNjh1TXbr/Vpq6lOIOxHRn
         fzGTE6wIJaa5QDWzVP+7R+n6IhePvxHkBofqFdxU180GDm4LHAquljATq+D46S9duLKw
         buHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=bcpIPdON;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id b25si158720vkk.5.2020.11.19.19.31.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2020 19:31:55 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AK3QOHm097173;
	Fri, 20 Nov 2020 03:31:52 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 34t76m8qxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 20 Nov 2020 03:31:52 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AK3OfRD029248;
	Fri, 20 Nov 2020 03:31:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 34ts60wh97-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 20 Nov 2020 03:31:51 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AK3VoOR025900;
	Fri, 20 Nov 2020 03:31:50 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Nov 2020 19:31:50 -0800
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-kernel@vger.kernel.org,
        Nathan Chancellor <natechancellor@gmail.com>,
        linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: core: fix -Wformat
Date: Thu, 19 Nov 2020 22:31:43 -0500
Message-Id: <160584262848.7157.14296415602219986964.b4-ty@oracle.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201107081132.2629071-1-ndesaulniers@google.com>
References: <20201107081132.2629071-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9810 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0 phishscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011200023
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9810 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 mlxscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011200023
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=bcpIPdON;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Sat, 7 Nov 2020 00:11:32 -0800, Nick Desaulniers wrote:

> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. Turns out, struct
> Scsi_Host's member can_queue is actually an int. Fixes:
> 
> [-Wformat]
> shost_rd_attr(can_queue, "%hd\n");
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                           %d

Applied to 5.11/scsi-queue, thanks!

[1/1] scsi: core: Fix -Wformat for scsi_host
      https://git.kernel.org/mkp/scsi/c/883928201b00

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160584262848.7157.14296415602219986964.b4-ty%40oracle.com.
