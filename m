Return-Path: <clang-built-linux+bncBC52Z7GNQMJRBPE576AAMGQE44U3CWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 113A13123C2
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Feb 2021 12:27:57 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id t9sf11399818edd.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 03:27:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612697276; cv=pass;
        d=google.com; s=arc-20160816;
        b=K3AhaffgLisOgClLbIleIPyZjdTE70xC42IdYU3JpHYuhQcbgi6e4B2kPofmp42VXT
         oEijbyOqltVRoKCQcmvgiv6S9mB7xGAj5M4cruSMJg202c+ENZ7MfXL5Ag4tJZZz3j6Z
         fdQb+7rslt/dXKTf3zOVa9Uwrczgn5AHL2PxLAwN/ptKqDqS7tiSsMTrt3R0hWMg0BPD
         5HkaN5EsH0vUHFBDouJLZtWWPDaLnSpUZGZU+IKmjaFuI5Tz1TXZRfRvicSvy/qVN+PF
         pXhTvjRnu0vln4Efyxto9eOTXybFRWD+JXK5CaQjheyAt48cCNI2z+CdSgXUMcztt1rI
         6zjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=gUIwNqn0wi6WeTKsfDJQRsu+7zBIn0sd0eW3PBpDU5o=;
        b=GrBVOYW63Kj8YivsQ5GK4t9Si6KV+kKwDDrX0s0ocejlZmIZ5oy3aRqlvbK4VwCSWl
         iEhXyFwRKBKxEHWkkY/ZTO+J6iXvLSHezB2a5IEfpR0R7ypMAY8F1+CAdVcZ7H0DhZJ1
         G3tvTIhi6rrptcF2bQCNnBsq3qg9jEoKkBDujTflBQPdyklwIWhVlQmGYKIcClq1ISRb
         mFquDZM5SeMHD7RGMbUBIxGHZ5cxD1ZuC5/bnaoglJ4SOW8o/RWe4t3a9kMcxjC8QE1g
         Xj/1LrnuE+jE4ZqobJNzH9OcBcyZNdVRkeL77XLudHmpS3Vbu8MYzI8fd+g54TW5Z6BD
         D8mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of john.johansen@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=john.johansen@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gUIwNqn0wi6WeTKsfDJQRsu+7zBIn0sd0eW3PBpDU5o=;
        b=j/Oz5o92nYwjGO4ZHE0FbCqHyozi8S60hHXqn3TAbDmWlBVMy/05UaD2cXrZ8dl/RV
         K5xwMkQ8pLhOeCHTnWpefsOsV9j4lOVQ6h89F82zniZEXEEN/gqyRR1OnkmZqGdncBTP
         VHh6J59hm+R8760FH3+CbM9QwuSJhrekDeZ8Cf52kgbobixcf/ptATX0qVYjRcDggU2t
         M6AL8djFp6g16GpcsWjOvPXNMvIjxUQAJEod+FeIle1TGQ0SDVXeSwyFnIPA9JZ4zhZA
         aiHBiLUcJ4PypW90hCrdhWO3l7duh3X6tXsz0LAQ/jwtCw+HRVgYc7gpOAiLNUjUbLda
         ti8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gUIwNqn0wi6WeTKsfDJQRsu+7zBIn0sd0eW3PBpDU5o=;
        b=cGYFf7jA+rNMslD37hHAajdYa9RGtiKW33f+dGRcBOZZ695aez2CXTYyBKy9Q4XeaX
         M9gXtMKafyUFKvwbjaUUxAyJZSjGHedThBFc0EMwqD3FRg1C7cTSmZIw1O8gHop+JJ+U
         fGanvtie4KN2E0hzkzFqfmZLldHO2VMxiWrhKSQOYW/GN350a3dqOF+BB9rY7eC/gbwS
         WDhGh0fCrVbLc2KvaBenTn3KOV49TzgjntbQxhHQMm3GfREASc8KDt0gGcfMg1aX4Nax
         F2oGC43q02l3Q+mihV0n1brFa6F126MnA5LMLHmDL86/mgNDIOYDSU3NT7n2jJidM+61
         09ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QuBMebPwhfwxcw5EXowZX72RtK36sPiJ3L2ezU5AbTWYb3BIg
	ICK5Ziiu3oGf+IPqrBhOq0Q=
X-Google-Smtp-Source: ABdhPJxUg19fHHHHQbujcjDZuv5/QEk5BQyshovTynLvmbMmK24GcpvDSX5rsb/XUoaVg4pkjPHlvg==
X-Received: by 2002:a17:907:9702:: with SMTP id jg2mr12496609ejc.48.1612697276699;
        Sun, 07 Feb 2021 03:27:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd14:: with SMTP id i20ls13757101eds.2.gmail; Sun, 07
 Feb 2021 03:27:56 -0800 (PST)
X-Received: by 2002:a50:d7c7:: with SMTP id m7mr12000943edj.260.1612697275955;
        Sun, 07 Feb 2021 03:27:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612697275; cv=none;
        d=google.com; s=arc-20160816;
        b=GeghImsA0N6HZDcgEC4SS9b+915dnMOJIDuzqwpKSDWH9LEsHta+0Mag6G/s+UEJ39
         3FKBwSJUtEFGqpcfP1MUVv+Z3zgaW+TsTxsGVMlC1NxGcbhEZuTFLg5bFx+PDtwZudkd
         8FVt/f/bpZsh5qWf/L9UC5w3RfAjJypLepckTTGbm521GqjCOQRv6fs63GRWZF7M7BD/
         PYz6ZxvpBvXfwYvVByZ324+oesQ/aHI1IHxbap6gGylYocjPDOvwB50QMxkEzZ+cUMJ/
         yGL04kafurB6ZOCfRrZVL2nqpeov/qy7T673fY+ZIMYjN1vstp9aJfETEXXuDq/PXdBZ
         nVZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject;
        bh=YouoFp0xplybUABHkczjFg7sqH4UBvXv6x37oMcjcZE=;
        b=CgAl52h00f6AK8jxFIX2CFSJ/X0PKIVMbQjqd6THOEpAgHa2WNo8lrSmm33fYZ/ugh
         KKUjDWeUoQox8NcildW6HaA8hpiD89+U9ABF9Rf6mIcJmtCxzNjRGF8yInDJ8KoQpPJ3
         zeXsWg7VX7HJog815/Ri8MwwpK1a56MVd8W3CvshmnGUERUQDkTPOZHYM2Js+3TPooyP
         eYyPXcOPvXIP7EikhEwjs2G26AAX870JPBwuAZKgtn/lqIewoGhnZUaz52Ug0qSlXEn8
         T0BNnYNrLvtJVGjLmP8UdKmOiWycFZxJHh1QoeiEv2b6pCKwjAOXDJKPrwOShyxE5oNC
         7VuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of john.johansen@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=john.johansen@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id a15si772100edn.0.2021.02.07.03.27.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 03:27:55 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of john.johansen@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from [50.53.41.238] (helo=[192.168.192.153])
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <john.johansen@canonical.com>)
	id 1l8iEM-0004ug-Mr; Sun, 07 Feb 2021 11:27:54 +0000
Subject: Re: [PATCH] apparmor: fix error check
To: trix@redhat.com, jmorris@namei.org, serge@hallyn.com,
 natechancellor@gmail.com, ndesaulniers@google.com
Cc: linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20201004142422.5717-1-trix@redhat.com>
From: John Johansen <john.johansen@canonical.com>
Autocrypt: addr=john.johansen@canonical.com; prefer-encrypt=mutual; keydata=
 LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkU1bXJQb0JFQURB
 azE5UHNnVmdCS2tJbW1SMmlzUFE2bzdLSmhUVEtqSmR3VmJrV1NuTm4rbzZVcDVrCm5LUDFm
 NDlFQlFsY2VXZzF5cC9Od2JSOGFkK2VTRU8vdW1hL0srUHFXdkJwdEtDOVNXRDk3Rkc0dUI0
 L2Nhb20KTEVVOTdzTFFNdG52R1dkeHJ4VlJHTTRhbnpXWU1neno1VFptSWlWVFo0M091NVZw
 YVMxVnoxWlN4UDNoL3hLTgpaci9UY1c1V1FhaTh1M1BXVm5ia2poU1pQSHYxQmdoTjY5cXhF
 UG9tckpCbTFnbXR4M1ppVm1GWGx1d1RtVGdKCk9rcEZvbDduYkowaWxuWUhyQTdTWDNDdFIx
 dXBlVXBNYS9XSWFuVk85NldkVGpISElhNDNmYmhtUXViZTR0eFMKM0ZjUUxPSlZxUXN4NmxF
 OUI3cUFwcG05aFExMHFQV3dkZlB5LyswVzZBV3ROdTVBU2lHVkNJbld6bDJIQnFZZAovWmxs
 OTN6VXErTklvQ244c0RBTTlpSCt3dGFHRGNKeXdJR0luK2VkS050SzcyQU1nQ2hUZy9qMVpv
 V0g2WmVXClBqdVVmdWJWelp0bzFGTW9HSi9TRjRNbWRRRzFpUU50ZjRzRlpiRWdYdXk5Y0dp
 MmJvbUYwenZ5QkpTQU5weGwKS05CRFlLek42S3owOUhVQWtqbEZNTmdvbUwvY2pxZ0FCdEF4
 NTlMK2RWSVpmYUYyODFwSWNVWnp3dmg1K0pvRwplT1c1dUJTTWJFN0wzOG5zem9veWtJSjVY
 ckFjaGtKeE5mejdrK0ZuUWVLRWtOekVkMkxXYzNRRjRCUVpZUlQ2ClBISGdhM1JneWtXNSsx
 d1RNcUpJTGRtdGFQYlhyRjNGdm5WMExSUGN2NHhLeDdCM2ZHbTd5Z2Rvb3dBUkFRQUIKdEIx
 S2IyaHVJRXB2YUdGdWMyVnVJRHhxYjJodVFHcHFiWGd1Ym1WMFBva0NPZ1FUQVFvQUpBSWJB
 d1VMQ1FnSApBd1VWQ2drSUN3VVdBZ01CQUFJZUFRSVhnQVVDVG8wWVZ3SVpBUUFLQ1JBRkx6
 WndHTlhEMkx4SkQvOVRKWkNwCndsbmNUZ1llcmFFTWVEZmtXdjhjMUlzTTFqMEFtRTRWdEwr
 ZkU3ODBaVlA5Z2tqZ2tkWVN4dDdlY0VUUFRLTWEKWlNpc3JsMVJ3cVUwb29nWGRYUVNweHJH
 SDAxaWN1LzJuMGpjWVNxWUtnZ1B4eTc4QkdzMkxacTRYUGZKVFptSApaR25YR3EvZURyL21T
 bmowYWF2QkptTVo2amJpUHo2eUh0QllQWjlmZG84YnRjendQNDFZZVdvSXUyNi84SUk2CmYw
 WG0zVkM1b0FhOHY3UmQrUldaYThUTXdsaHpIRXh4ZWwzanRJN0l6ek9zbm1FOS84RG0wQVJE
 NWlUTENYd1IKMWN3SS9KOUJGL1MxWHY4UE4xaHVUM0l0Q05kYXRncDh6cW9Ka2dQVmptdnlM
 NjRRM2ZFa1liZkhPV3NhYmE5LwprQVZ0Qk56OVJURmg3SUhEZkVDVmFUb3VqQmQ3QnRQcXIr
 cUlqV0ZhZEpEM0k1ZUxDVkp2VnJyb2xyQ0FUbEZ0Ck4zWWtRczZKbjFBaUlWSVUzYkhSOEdq
 ZXZnejVMbDZTQ0dIZ1Jya3lScG5TWWFVL3VMZ24zN042QVl4aS9RQUwKK2J5M0N5RUZManpX
 QUV2eVE4YnEzSXVjbjdKRWJoUy9KLy9kVXFMb2VVZjh0c0dpMDB6bXJJVFpZZUZZQVJoUQpN
 dHNmaXpJclZEdHoxaVBmL1pNcDVnUkJuaXlqcFhuMTMxY20zTTNndjZIclFzQUdubjhBSnJ1
 OEdEaTVYSllJCmNvLzEreC9xRWlOMm5DbGFBT3BiaHpOMmVVdlBEWTVXMHEzYkEvWnAybWZH
 NTJ2YlJJK3RRMEJyMUhkL3ZzbnQKVUhPOTAzbU1aZXAyTnpOM0JaNXFFdlB2RzRyVzVacTJE
 cHliV2JRclNtOW9iaUJLYjJoaGJuTmxiaUE4YW05bwpiaTVxYjJoaGJuTmxia0JqWVc1dmJt
 bGpZV3d1WTI5dFBva0NOd1FUQVFvQUlRVUNUbzBYV2dJYkF3VUxDUWdICkF3VVZDZ2tJQ3dV
 V0FnTUJBQUllQVFJWGdBQUtDUkFGTHpad0dOWEQySXRNRC85anliYzg3ZE00dUFIazZ5Tk0K
 TjBZL0JGbW10VFdWc09CaHFPbm9iNGkzOEJyRE8yQzFoUUNQQ1FlNExMczEvNHB0ZW92UXQ4
 QjJGeXJQVmp3Zwo3alpUSE5LNzRyNmxDQ1Z4eDN5dTFCN1U5UG80VlRrY3NsVmIxL3FtV3V4
 OFhXY040eXZrVHFsTCtHeHB5Sm45CjlaWmZmWEpjNk9oNlRtT2ZiS0d2TXV1djVhclNJQTNK
 SEZMZjlhTHZadEExaXNKVXI3cFM5YXBnOXVUVUdVcDcKd2ZWMFdUNlQzZUczbXRVVTJ1cDVK
 VjQ4NTBMMDVqSFM2dVdpZS9ZK3lmSk9iaXlyeE4vNlpxVzVHb25oTEJxLwptc3pjVjV2QlQz
 QkRWZTNSdkY2WGRNOU9oUG4xK1k4MXg1NCt2UTExM044aUx3RjdHR2ExNFp5SVZBTlpEMEkw
 CkhqUnZhMmsvUnFJUlR6S3l1UEg1cGtsY0tIVlBFRk1tT3pNVCtGT294Tmp2Uys3K3dHMktN
 RFlFbUhQcjFQSkIKWlNaZUh6SzE5dGZhbFBNcHBGeGkrc3lZTGFnTjBtQjdKSFF3WTdjclV1
 T0RoeWNxNjBZVnoxdGFFeWd1M1l2MgoyL0kxRUNHSHZLSEc2d2M5MG80M0MvZWxIRUNYbkVo
 N3RLcGxEY3BJQytPQ21NeEtIaFI0NitYY1p2Z3c0RGdiCjdjYTgzZVFSM0NHODlMdlFwVzJM
 TEtFRUJEajdoWmhrTGJra1BSWm0zdzhKWTQ0YXc4VnRneFdkblNFTUNMeEwKSU9OaDZ1Wjcv
 L0RZVnRjSWFNSllrZWJhWnRHZENwMElnVVpiMjQvVmR2WkNZYk82MkhrLzNWbzFuWHdIVUVz
 Mwo2RC92MWJUMFJaRmk2OUxnc0NjT2N4NGdZTGtDRFFST1pxejZBUkFBb3F3NmtrQmhXeU0x
 ZnZnYW1BVmplWjZuCktFZm5SV2JrQzk0TDFFc0pMdXAzV2IyWDBBQk5PSFNrYlNENHBBdUMy
 dEtGL0VHQnQ1Q1A3UWRWS1JHY1F6QWQKNmIyYzFJZHk5Ukx3Nnc0Z2krbm4vZDFQbTFra1lo
 a1NpNXpXYUlnMG01UlFVaytFbDh6a2Y1dGNFLzFOMFo1TwpLMkpoandGdTViWDBhMGw0Y0ZH
 V1ZRRWNpVk1ES1J0eE1qRXRrM1N4RmFsbTZaZFEycHAyODIyY2xucTR6WjltCld1MWQyd2F4
 aXorYjVJYTR3ZURZYTduNDFVUmNCRVViSkFnbmljSmtKdENUd3lJeElXMktuVnlPcmp2a1F6
 SUIKdmFQMEZkUDJ2dlpvUE1kbENJek9sSWtQTGd4RTBJV3VlVFhlQkpoTnMwMXBiOGJMcW1U
 SU1sdTRMdkJFTEEvdgplaWFqajVzOHk1NDJIL2FIc2ZCZjRNUVVoSHhPL0JaVjdoMDZLU1Vm
 SWFZN09nQWdLdUdOQjNVaWFJVVM1K2E5CmduRU9RTER4S1J5L2E3UTF2OVMrTnZ4KzdqOGlI
 M2prUUpoeFQ2WkJoWkdSeDBna0gzVCtGMG5ORG01TmFKVXMKYXN3Z0pycUZaa1VHZDJNcm0x
 cW5Ld1hpQXQ4U0ljRU5kcTMzUjBLS0tSQzgwWGd3ajhKbjMwdlhMU0crTk8xRwpIMFVNY0F4
 TXd5L3B2azZMVTVKR2paUjczSjVVTFZoSDRNTGJEZ2dEM21QYWlHOCtmb3RUckpVUHFxaGc5
 aHlVCkVQcFlHN3NxdDc0WG43OStDRVpjakxIenlsNnZBRkUyVzBreGxMdFF0VVpVSE8zNmFm
 RnY4cUdwTzNacVB2akIKVXVhdFhGNnR2VVFDd2YzSDZYTUFFUUVBQVlrQ0h3UVlBUW9BQ1FV
 Q1RtYXMrZ0liREFBS0NSQUZMelp3R05YRAoyRC9YRC8wZGRNLzRhaTFiK1RsMWp6bkthalgz
 a0crTWVFWWVJNGY0MHZjbzNyT0xyblJHRk9jYnl5ZlZGNjlNCktlcGllNE93b0kxamNUVTBB
 RGVjbmJXbkROSHByMFNjenhCTXJvM2Juckxoc212anVuVFlJdnNzQlp0QjRhVkoKanVMSUxQ
 VWxuaEZxYTdmYlZxMFpRamJpVi9ydDJqQkVOZG05cGJKWjZHam5wWUljQWJQQ0NhL2ZmTDQv
 U1FSUwpZSFhvaEdpaVM0eTVqQlRtSzVsdGZld0xPdzAyZmtleEgrSUpGcnJHQlhEU2c2bjJT
 Z3hubisrTkYzNGZYY205CnBpYXczbUtzSUNtKzBoZE5oNGFmR1o2SVdWOFBHMnRlb29WRHA0
 ZFlpaCsreFgvWFM4ekJDYzFPOXc0bnpsUDIKZ0t6bHFTV2JoaVdwaWZSSkJGYTRXdEFlSlRk
 WFlkMzdqL0JJNFJXV2hueXc3YUFQTkdqMzN5dEdITlVmNlJvMgovanRqNHRGMXkvUUZYcWpK
 Ry93R2pwZHRSZmJ0VWpxTEhJc3ZmUE5OSnEvOTU4cDc0bmRBQ2lkbFdTSHpqK09wCjI2S3Bi
 Rm5td05PMHBzaVVzbmh2SEZ3UE8vdkFibDNSc1I1KzBSbytodnMyY0VtUXV2OXIvYkRsQ2Zw
 enAydDMKY0srcmh4VXFpc094OERaZnoxQm5rYW9DUkZidnZ2ays3TC9mb21QbnRHUGtxSmNp
 WUU4VEdIa1p3MWhPa3UrNApPb00yR0I1bkVEbGorMlRGL2pMUStFaXBYOVBrUEpZdnhmUmxD
 NmRLOFBLS2ZYOUtkZm1BSWNnSGZuVjFqU24rCjh5SDJkakJQdEtpcVcwSjY5YUlzeXg3aVYv
 MDNwYVBDakpoN1hxOXZBenlkTjVVL1VBPT0KPTZQL2IKLS0tLS1FTkQgUEdQIFBVQkxJQyBL
 RVkgQkxPQ0stLS0tLQo=
Organization: Canonical
Message-ID: <71f9eb30-46e0-8370-54b5-77c5e17df3df@canonical.com>
Date: Sun, 7 Feb 2021 03:27:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201004142422.5717-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: john.johansen@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of john.johansen@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=john.johansen@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 10/4/20 7:24 AM, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this representative problem:
> 
> label.c:1463:16: warning: Assigned value is garbage or undefined
>         label->hname = name;
>                      ^ ~~~~
> 
> In aa_update_label_name(), this the problem block of code
> 
> 	if (aa_label_acntsxprint(&name, ...) == -1)
> 		return res;
> 
> On failure, aa_label_acntsxprint() has a more complicated return
> that just -1.  So check for a negative return.
> 
> It was also noted that the aa_label_acntsxprint() main comment refers
> to a nonexistent parameter, so clean up the comment.
> 
> Fixes: f1bd904175e8 ("apparmor: add the base fns() for domain labels")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  security/apparmor/label.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/security/apparmor/label.c b/security/apparmor/label.c
> index e68bcedca976..6222fdfebe4e 100644
> --- a/security/apparmor/label.c
> +++ b/security/apparmor/label.c
> @@ -1454,7 +1454,7 @@ bool aa_update_label_name(struct aa_ns *ns, struct aa_label *label, gfp_t gfp)
>  	if (label->hname || labels_ns(label) != ns)
>  		return res;
>  
> -	if (aa_label_acntsxprint(&name, ns, label, FLAGS_NONE, gfp) == -1)
> +	if (aa_label_acntsxprint(&name, ns, label, FLAGS_NONE, gfp) < 0)
>  		return res;
>  
>  	ls = labels_set(label);
> @@ -1704,7 +1704,7 @@ int aa_label_asxprint(char **strp, struct aa_ns *ns, struct aa_label *label,
>  
>  /**
>   * aa_label_acntsxprint - allocate a __counted string buffer and print label
> - * @strp: buffer to write to. (MAY BE NULL if @size == 0)
> + * @strp: buffer to write to.
>   * @ns: namespace profile is being viewed from
>   * @label: label to view (NOT NULL)
>   * @flags: flags controlling what label info is printed
> 


sorry it seems I missed replying to this. This patch has been pulled into apparmor-next

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/71f9eb30-46e0-8370-54b5-77c5e17df3df%40canonical.com.
