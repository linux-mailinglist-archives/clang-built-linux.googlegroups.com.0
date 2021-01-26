Return-Path: <clang-built-linux+bncBD53FBNV6ACRBT6LYKAAMGQEIBR5KXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA33304D55
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 00:29:21 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id v16sf218723pgl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 15:29:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611703759; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q0EdbPsgXA8IqtxSNCn1Brj4q9dEfJliajKilFe/mWs8PGrHNGmN+K7sYQdnJ/Pxkf
         KsA9tUZzdwcxKF3guy3XbT9VKV/keLpndrl6CD9WGVr4eiX74a1ZG3jCRnRPbvcPyTzZ
         Wiv2JiiLi7s44emNAkVCXEntPqPSkQvNfZ10WyetVuB+0eqgIzq/Av40j+BoLs43vXET
         p8WhQKsjBMtho/CbXNeqX5F8TbKV8B2orhzk1g/tmI5Heo9caM1xUjbvbX+cqDROJKo9
         fBpzIZkEMw+9mKBIiy3W7FJaB3p4Iq6DZdu0e4nacBc9WPsA18lha5kcoVrPBC5EWA9g
         Gh4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=jVu1ktOGZyG4UkW4MDID0sZoYJ8IE/s8nxS+57UOxS4=;
        b=xjVTQ9d4BgTaAmcYqsGCSbb4POsNjDpB9CIq+f34thknESsJ86Qm+Dc04g2HVKeERC
         7zzGFbxOgCV/X+IeIlP+ZEpP7/ALLMtR48zyDYESieDN3njFO3dMyYuSzGSo+NzlnDQK
         adii3UHyCOglglD/GqpJ6RsotTXzffAQcdRHKmNBWuO+dH5G8Nbs22mkv3+DmuvWEe0F
         fxYirhjCMziRbG9Rf+J4BHng01mDG0ur2UaAVXijllGRmmw3+hhBuOW4ZT9hYE/Bcu02
         bBiC2V9oMWz1kBB1gADGEN5Au/iXlqebc5tNED2idJ9Xw3QvzFSbBnxqMtqfSuoLoui8
         0d+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VlXcOsJR;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jVu1ktOGZyG4UkW4MDID0sZoYJ8IE/s8nxS+57UOxS4=;
        b=dsDVgs4A6rUMEozAZhW2sW0cYXbrt7aP/m7WJ+fpSVgwgm9PVPj5wtdVU40+K3bkCo
         ILMT1Oi5AuetU1zGPsG8RvhyUeRe4H8mLp0p9oIB/dgRx25ZQ9YEhrWPib5/AOAqncv0
         cYpg/rOH4/dZoN84Rhst8wHwK9Zkbdc3ikGySobyGLNvTmM76+HcywH/7zQV4Rrk2RrQ
         vNjsl246AYKnOaTGUJiE1UtXNIlngD5J/U7mc9+k+rP1B9gsDXvbECweCvRbbYlFg3S9
         ygI45LMc2P437ehD2hnNp6TDiAn1qZX/l1Jts7y8nrY3ZYV/wfyUcsUseb9lDzDQviai
         aXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jVu1ktOGZyG4UkW4MDID0sZoYJ8IE/s8nxS+57UOxS4=;
        b=nW9O8VHNtuT45gz+bR3qqYuZ59OBonDXJb5ccsy1s6BmiD6y55KOnkyEiiQui8DWcU
         phc6bfVpl3QCQtveIq147J1OB9N80S5JQ6zCYdb6Jhl9Qt/ICczm9mYm7gUF/Mdn9Au+
         bYX1AIOw149zCEuKzNtVGHgGhNWTPMp8yPpfqWnH3pm23ZDNJZbqv9oKtbuZr0tLzUrJ
         +OsX+aE+nZkeDm9JmBDA9fPCORctatTZVQq++Glcj9UNIEbCJCOkuYonR5OnQ2aCrKAb
         vGzGZo0VflpEN7AZP+DM75VZ2FeDOiAMp0wJPUSCiFc/yxmEL1rpqLQqieAxrS4QLkWS
         y3cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rREintUfl0GsCen1GOMyDvLZ+evJglATYNNqrXlXUHh61QOEU
	HtvF5THSDXMcnF7jjT0gSxg=
X-Google-Smtp-Source: ABdhPJy8Rha0UYxqsryD237yiRVCxF2XM+IxaRNgVP4rY+pO40rqEKj/vdhN2QsUhrspkH31F8Xk3Q==
X-Received: by 2002:a17:90b:e8b:: with SMTP id fv11mr2383452pjb.210.1611703759558;
        Tue, 26 Jan 2021 15:29:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9f87:: with SMTP id g7ls63948plq.5.gmail; Tue, 26
 Jan 2021 15:29:19 -0800 (PST)
X-Received: by 2002:a17:90b:1992:: with SMTP id mv18mr2372835pjb.174.1611703758865;
        Tue, 26 Jan 2021 15:29:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611703758; cv=none;
        d=google.com; s=arc-20160816;
        b=BYbh/0j3dZRxMTuMPEK3zFawAp0ZSS9sCSBwdSu4HRG28kC6D3ZUeJXyb858Qig1LA
         vBeCcXkDMjA3tiX5vOoGSFII3Yp5tKQMXmSEH2zuCIpN3FYdsrydatAG0smeOeOmLSmH
         fDe5HnvC51g0uv0hovFu5PZFooD7nLN605alZMx6jcI9g6hiApqyWlQ65Ux7+g7qE3Ki
         LkztSv1syIOR4DbSSsJvnySi34efsG8/vmYod/QEP04hQ0+SN4C7X6jvNzOmkLBPNwsG
         WukAcux5OQyAzCNgMr/ql3nSwDMwP8GTPUw9pwarLkUEGVBrkes0i2ao7twb5b2AcYSa
         GsHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=TkQxzfdMqsw/gW9+lFURoFgHgGQWm4QEavZ5a0O9WgE=;
        b=PmC2UR5qvhF9eSIpx/PJlID7dTyeGSpvn1HImZMJfMkSoMMBcKwVzHjmQTp851MD7M
         XugVnmE+OtY9qnhD4yJ5sGwdsRJdcfDVl0nE8RpKIS2+D+pt2D3YMyM3PGyai4Xw5rAM
         9XgdLjr4NZztD/f29b1VffUIeqOdG/c4j14afbNDnh0TzCfGMlLEtVRJ8i68e4i9wy97
         SGl3TtA51tZ3nhx9KqGiF58rhc2GoIXYRa21lcLwNTot2YCOduaG4XmOHrOFKc4PjJLV
         gKgny58aBU3hEBmsXQcfaabGxO9Zh0fOmVnk6cNRrnECkTjx7ib+bCalLrN3Do13M9ec
         hhoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VlXcOsJR;
       spf=pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=rasibley@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id 13si12034pgf.0.2021.01.26.15.29.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 15:29:18 -0800 (PST)
Received-SPF: pass (google.com: domain of rasibley@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-w9PDy3CGMWC62Z4CLWcocA-1; Tue, 26 Jan 2021 18:29:15 -0500
X-MC-Unique: w9PDy3CGMWC62Z4CLWcocA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4AD68801F97;
	Tue, 26 Jan 2021 23:29:14 +0000 (UTC)
Received: from localhost.localdomain (ovpn-118-198.rdu2.redhat.com [10.10.118.198])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 26C7E19D80;
	Tue, 26 Jan 2021 23:29:04 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=f0=9f=92=a5_PANICKED=3a_Test_report_for_kernel_5?=
 =?UTF-8?Q?=2e11=2e0-rc5_=28mainline=2ekernel=2eorg-clang=29?=
To: Nathan Chancellor <natechancellor@gmail.com>,
 CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, David Arcari <darcari@redhat.com>,
 Xiong Zhou <xzhou@redhat.com>
References: <cki.205997F8B4.SUXMQTXAEJ@redhat.com>
 <20210126173431.GA602636@ubuntu-m3-large-x86>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <0334f736-204c-2e17-d8f4-876fbc146fc6@redhat.com>
Date: Tue, 26 Jan 2021 18:29:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210126173431.GA602636@ubuntu-m3-large-x86>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rasibley@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VlXcOsJR;
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



On 1/26/21 12:34 PM, Nathan Chancellor wrote:
> On Tue, Jan 26, 2021 at 04:45:08PM -0000, CKI Project wrote:
>>
>> Hello,
>>
>> We ran automated tests on a recent commit from this kernel tree:
>>
>>         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/tor=
valds/linux.git
>>              Commit: f8ad8187c3b5 - fs/pipe: allow sendfile() to pipe ag=
ain
>>
>> The results of these automated tests are provided below.
>>
>>      Overall result: FAILED (see details below)
>>               Merge: OK
>>             Compile: OK
>>   Selftests compile: FAILED
>>               Tests: PANICKED
>>
>> All kernel binaries, config files, and logs are available for download h=
ere:
>>
>>    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html=
?prefix=3Ddatawarehouse-public/2021/01/25/622152
>>
>> One or more kernel tests failed:
>>
>>      aarch64:
>>       =E2=9D=8C selinux-policy: serge-testsuite
>>
>>      x86_64:
>>       =F0=9F=92=A5 LTP
>=20
> This mentions that LTP panicked but looking through the dmesg logs under
> tests/ and the log files in tests/LTP/, I cannot see a clear panic. Am I
> missing something?

Hi Nathan, you can find the panic in the console.log, looks like it was tri=
ggered with the
LTP proc01 test, I'm attempting to reproduce it, will keep you posted:
https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/01/25/622152/build_x86_64_redhat%3A1082893/tests/9463951_x86_64_1=
_console.log


[10040.073391] Oops: 0000 [#1] SMP PTI
[10040.074061] CPU: 0 PID: 772677 Comm: proc01 Not tainted 5.11.0-rc5 #1
[10040.075266] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2011
[10040.076339] RIP: 0010:kpagecount_read+0x121/0x1e0
[10040.077232] Code: 01 00 75 15 4a f7 44 30 08 01 00 00 00 75 0a 42 8b 44 =
30 30 83 c0 01 eb 05 e8 6b 68 e7 ff 48 63 d8 eb 18 48 83 c1 ff 48 89 ca=20
<48> f7 02 00 02 00 00 74 bf 66 0f 1f 44 00 00 31 db 48 c7 c7 59 2b
[10040.080703] RSP: 0018:ffffab78c3a2fe10 EFLAGS: 00010293
[10040.081691] RAX: fffff92900000000 RBX: fffffffffffffff2 RCX: fffffffffff=
ffffe
[10040.083029] RDX: fffffffffffffffe RSI: 0000000000000001 RDI: fffff92908a=
14000
[10040.084365] RBP: 0000000000000400 R08: 0000000000000001 R09: ffff96f1158=
b5e78
[10040.085703] R10: 0000000000000000 R11: ffffffffa1536bb0 R12: 00000000000=
00000
[10040.087042] R13: 0000000000228500 R14: 0000000008a14000 R15: 00000000004=
4c820
[10040.088376] FS:  00007f7056512740(0000) GS:ffff96f160600000(0000) knlGS:=
0000000000000000
[10040.089887] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[10040.090977] CR2: fffffffffffffffe CR3: 000000013abea006 CR4: 00000000007=
706f0
[10040.092311] DR0: 0000000000423830 DR1: 0000000000000000 DR2: 00000000000=
00000
[10040.093642] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 00000000000=
00600
[10040.094974] PKRU: 55555554
[10040.095489] Call Trace:
[10040.095971]  proc_reg_read+0x47/0xa0
[10040.096652]  vfs_read+0x100/0x340
[10040.097292]  ? lapic_next_deadline+0x22/0x30
[10040.098102]  ? clockevents_program_event+0x82/0xe0
[10040.099007]  ? syscall_enter_from_user_mode+0x2e/0x1c0
[10040.099983]  ksys_read+0x5f/0xb0
[10040.100600]  do_syscall_64+0x33/0x40
[10040.101284]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[10040.102238] RIP: 0033:0x7f7056624f6d

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
clang-built-linux/0334f736-204c-2e17-d8f4-876fbc146fc6%40redhat.com.
