Return-Path: <clang-built-linux+bncBD53FBNV6ACRBXPV2GAAMGQEOVTHLYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id C3842308F10
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:15:10 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id c18sf6044401pls.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:15:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611954909; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z4SQu4zqPb2rFQ6HvcG17uCrHsNp7ERrgfoLp5Oz85Xd45/1P/GXt3El3knMqSFbGD
         eMdNr6HZGPoJrtZWZXzV/dtS5m80ebV7e3zg4Sxn08F0vBqE1DVG7J4aZzLjTGGtViLv
         UMsxodsP0dtJD5u4pAYaHTw0ASVUKfog8FRwxe2ICB5gGnBoZhATtoMrrACpL+CViaWj
         ghqfq4WWRxjViWhRFyh+SWknxXglJ4k4sS6BDfiZ+pPVr3M1NxVokqstlX1IqmDOOErh
         eWDzNkLYF+S6BjxuxqBvt7YZdbYL0CHtcN1UD3CosffGmpYw7ByElD2OZh9tTtDWILZC
         Sfqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=tSx188cyT/q1WaIoZ0UDM8gt0ATUczgO/yObLEXpcww=;
        b=KiVkDHTDpIpd73SE6tptTxk1uvYI2sOTZgjeMlClWBMyO6LsyNzHUhb3+f2jMsITI+
         BkpHJm3I/arUr0/KNQ2YDQXieRX6D7cA8lpTF3w3r9fzqSd8OZkD3g0ihUyg9lqgT4v0
         O9AbsY6ouYHpZg2770vt7rDwVX+IYGZnLpIHkWeL0KtjQesdchfEhAEn5YjYPw9kfKsM
         udRAVGNXHWT8D7RFzAuPb4pjHpuuFDxUZO1Z8PGmF5MUhOOO18qtG4zAEVGN/ZK29Y38
         PH9f8BjWTnow1dPI+pdHZYpN5bFF5/9mwJRnBIK7eLm8cHCscHxrQRAnypiaZJYonxTZ
         f/aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KNz3R9WP;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tSx188cyT/q1WaIoZ0UDM8gt0ATUczgO/yObLEXpcww=;
        b=YAHcv6RyjxyK4nn/vrbqM+0ZTughsB3oSkiEloKzTr18WKYimabUvQha8SLsRGcMpd
         OXNU2+pAhYt8BkJNEoeTh1GmUfgUy9BiCQKkJu4QhScpo6bRD0PpPBtI4ReOddSbOVXE
         6TEjIsJhgxc+kxBVRfT2qGsrPiIjo8L+Jpt9PazPpl/X81kqpOvyMKY/hV84A+FTHPUU
         pnwJ98KDf3WA9q1IrapnCdluRLp56GakhOyabKDWhQGt/FyZe0DVQyyJ6bZKTS9E1IJf
         rVUxqbwQHipmgciBKaPZ8IPX4pOA+BXj9HHC7+BXMahRxFee5IcwwPLED6tlOxKnZ7Oj
         +rXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tSx188cyT/q1WaIoZ0UDM8gt0ATUczgO/yObLEXpcww=;
        b=rx/X8oiJrT8D76aGGvmxph3oF/9q490D8cqq5sSqMzfvBOu5/1H24WHgyd6irvgZza
         +YI0C0GCgR0TI6yhMyDCXpxqd7WEpUTCdFl/MQGsHMuDQl9xItQosA9fmawI7puyREM4
         17pdX3GA6cIe/BUVNvC4/MWoL/Ccwh7ofjILorti6MpLFYOxYLHdMGdsTuQJ9Q29XUv9
         zvDav5wkx097U259I5Y3loaPZ/CRgtkBJWyQvqMLaYfPPkT8Z0mT8/EMN6PWbS6uYjDI
         usk3/mIkZZaPGBXoq7z9WK6XQiLKrQA9gdSEslrJkL1j2s9L2eIkIBkvtHr1A6S7Iwdi
         YgVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MoK54F0yGyzHlOkdjnbTZrPBZM+MY4743O8qgGUw3d1hYxv/Y
	mHzP3gOL+RS159qAQ19EWsc=
X-Google-Smtp-Source: ABdhPJzal1IP5ZcgyvWfxnhB7AE1j+N+13kaPG+sD4VYIPkoXgkwGOXxpf9A0xEVq88rAUoEqJO9yg==
X-Received: by 2002:aa7:97ad:0:b029:1bf:ea2:59cf with SMTP id d13-20020aa797ad0000b02901bf0ea259cfmr6025550pfq.46.1611954909407;
        Fri, 29 Jan 2021 13:15:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c406:: with SMTP id k6ls4936667plk.11.gmail; Fri, 29
 Jan 2021 13:15:08 -0800 (PST)
X-Received: by 2002:a17:90a:245:: with SMTP id t5mr6330711pje.89.1611954908804;
        Fri, 29 Jan 2021 13:15:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611954908; cv=none;
        d=google.com; s=arc-20160816;
        b=qLgDBSRCOgvOxEzdK/oJBNVXRc8gx5Wq4N0Dipdp+3WlPCh2B9TLYVxWdPzFn+csBS
         v1hW4hJ1luAHOZMae0ci0ndVOG0VeKet3RTOGpSTsgqvGu3af3B0mmZFmd9chhRTrVfX
         btAKpeY/SSb0m/Tqo+MyEjileLCBNELEDCuiKGTvOfOCiFyearudBSmh3ZKBOWlnj7VU
         9vimLhk/7qOl7InscEq9ftvHyFXPoZ77TwPW74sDy1XwT4EflWX+ktroQ0gECpfqP3Q4
         L9xioBuRRIBLvXcmOo5JoQ2H7IiRatqMSArOll53KUDSMv2mOMDTAo6/c0NikB0Ac0Uk
         zchQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=EhtZMHbc7jlyjC/qLevPwcraNS7ll3e7EXjEgszY6NQ=;
        b=LqIaBoy7VrMEUqHgHs9y2n9PgbUhDlvSgwYBM/Mq5vsWc/9jRW8WJiRn7F7kPyj1jz
         D8IS2P9UkRNRo/ZEmZ9MWV2FGTQkwmdDEnWayDlTkGi1frSoUb2CECR/QPbwc6FOqBVk
         YYH5FLdMCAMFl/YU9thMD6ep7tG8l0yTFL2nPIm8bcXm1ckKsBPzIV6Y1W2WNGPRjjwR
         jDS2rKwqLn3Yuhq/bC6v/Dyb3+gJIsfvwuwEIAmeMbvXgu9UlyOa6K3FP8725Hj/km2V
         mD+qxSgM7mRmkzYPlwQmu5O6gmPhbM1zMlHZDlYyf+e0y9YBxsQl/pgsEgVBJHaEzU8B
         cLYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KNz3R9WP;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id ep11si534489pjb.0.2021.01.29.13.15.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:15:08 -0800 (PST)
Received-SPF: pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-waUVdknqPByshbgKKzBA8Q-1; Fri, 29 Jan 2021 16:15:05 -0500
X-MC-Unique: waUVdknqPByshbgKKzBA8Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1B15802B43;
	Fri, 29 Jan 2021 21:15:04 +0000 (UTC)
Received: from localhost.localdomain (ovpn-118-198.rdu2.redhat.com [10.10.118.198])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9634D10016F4;
	Fri, 29 Jan 2021 21:14:54 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e11=2e0?=
 =?UTF-8?Q?-rc5_=28mainline=2ekernel=2eorg-clang=29?=
To: Nathan Chancellor <nathan@kernel.org>,
 CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yi.zhang@redhat.com>, David Arcari <darcari@redhat.com>,
 Xiong Zhou <xzhou@redhat.com>, Erico Nunes <ernunes@redhat.com>,
 Xiaowu Wu <xiawu@redhat.com>, Baoquan He <bhe@redhat.com>
References: <cki.EDE78CA59A.GH2K68TZ9U@redhat.com>
 <20210129174535.GA2433369@localhost>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <c0cd9532-6984-07f7-709a-4a5d7b2d4d60@redhat.com>
Date: Fri, 29 Jan 2021 16:14:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210129174535.GA2433369@localhost>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rasibley@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KNz3R9WP;
       spf=pass (google.com: domain of rasibley@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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



On 1/29/21 12:45 PM, Nathan Chancellor wrote:
> On Fri, Jan 29, 2021 at 02:27:11PM -0000, CKI Project wrote:
>>
>> Hello,
>>
>> We ran automated tests on a recent commit from this kernel tree:
>>
>>         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/tor=
valds/linux.git
>>              Commit: c64396cc36c6 - Merge tag 'locking-urgent-2021-01-28=
' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
>>
>> The results of these automated tests are provided below.
>>
>>      Overall result: FAILED (see details below)
>>               Merge: OK
>>             Compile: OK
>>   Selftests compile: FAILED
>>               Tests: FAILED
>>
>> All kernel binaries, config files, and logs are available for download h=
ere:
>>
>>    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html=
?prefix=3Ddatawarehouse-public/2021/01/28/622469
>>
>> One or more kernel tests failed:
>>
>>      ppc64le:
>>       =E2=9D=8C selinux-policy: serge-testsuite
>>
>>      aarch64:
>>       =E2=9D=8C selinux-policy: serge-testsuite
>>       =E2=9D=8C Boot test
>=20
> Is there something flaky going on here? It seems to show up in some
> reports and not others.

Hi Nathan,

The boot test was a timeout which happened on a Mustang board which can be =
flaky due to firmware quirks, I have disabled
these board from upstream kernel testing to prevent it from happening again=
.

I also set the selinux-policy test to a waived status for upstream kernels =
while we investigate the issue with testing
with a clang kernel, so it will stop causing the job to fail, but will cont=
inue to run, while we investigate the issue.

Thanks,
Rachel


>=20
> Cheers,
> Nathan
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c0cd9532-6984-07f7-709a-4a5d7b2d4d60%40redhat.com.
