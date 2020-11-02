Return-Path: <clang-built-linux+bncBCKPFB7SXUERBFFQQD6QKGQEKTBXNDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E91C2A2CFF
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 15:30:45 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id c7sf393737ooj.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 06:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604327444; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4PPCbQjkHJvnZhzo2GGWeA7UtX6emUnYupM0x/l4ugvJAmQHGm9dSHS7cz5xiTQAO
         PjY9HtMQD5FTgmprCMAtv5xVpS4RZPftSmg0LXMUnfSXdkV/qC9klxSbqsyfsKjNnXkg
         k5wgGif77N380Ybp4mSN1mTN1PAzHadGTSqaV7WuQuKTUudxt0jk7phIjCkWPt+v0VTo
         7nikSW/ZbXRkhYGEjp5MJBIRcrCIQfw8xhDrFRZtfWLvJCj0MMHtD4c+v2Yp3sDMFXLP
         nieeJlioLwVLTQ3r9gzkbvaq+5j6VcXTYYVvf/RMW/aqobVa0567lPYt2BGI/cuQfSvs
         P0Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9PIFztuF3+lb+tfimsINnyqPwK486vnHkcItBnCNfUE=;
        b=fW6rziHjzW30VijcrSzTtkPZT2PqmnfGC+ga4AuUwJXoylVHW04zWkUIhvOli8yxnb
         cc3vAmpT7EqAZuk5cYBtgD2kHNLMEedWhsP+uLwcvd07zSSwlXQ+Tnhy7y9NW9M2I0YW
         ZajbUY6plnM/Z64UidpXO6FJaGAoNukSaHyxfWi9177lzHshcuURNkaZLcAS6DGMOr88
         srPAC98/2y7Wdrsho8Ah1CqtnzV5WuJTtj8FhokSQzORPQUqppK12NGETJzCKsw7fTEF
         ZDrdKBeo6/QcuP/9zFfPhoHr8FTGe6dA8knliIePk1ynSQCSI+8XgCKRvBC57b0w6Cff
         KHQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OHUwdFEC;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PIFztuF3+lb+tfimsINnyqPwK486vnHkcItBnCNfUE=;
        b=l3egTzPgVywEXOMJMBHDS40zXBKkh7Vyekl7zdjcgyiXXLb7HvjpILKkJYkdOrsDDK
         97IKr7JagVeSUujweKyuItZ+3/hMOkLDcdieg2jYVrfrCu52UIobjpVqzNp9GgNBNnOG
         bCpsfx+q9lzF5l7bk1hoKOffN1rFy+Ionhwz4OtEwldn7p8JeYbWSPRZ7wO/r3DCE6fM
         uxkU14aNGp8dmAwlnLW61Udq4dHbq7HCrbUNtEVbPxje5ACGqxEs8aUqf8QKAODKQANH
         /L1GZ5x+E+c972vChRSXjyAy2/VoCRYkk/Fj8MA9WBDXlbQH/EJvAOBSGRP0B3A/n/yb
         DQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PIFztuF3+lb+tfimsINnyqPwK486vnHkcItBnCNfUE=;
        b=R76ml5DCdPiZneDcMhofXHIbRNo81jxOCCG3TjPTo/xopTK8KXrkZuErkOLA6HDcIx
         9YKaRrU3hCrfAJq027diqsRAhTcPu2to0YFZJQwLIWgLyTYZ5dy6YakXOrLQmGjdVpA3
         Q+YymhDlHVdzZwGVhTzrBoPj0szBZ6Jdu9oYlA1lDCLts7vCWi+P5XFoMmLtgPYV4dlm
         06Pn8M90j9v2Q0b7pOvVfnUe4oNQzwOokYHSyISz9R7Bw1x0I2iPlZVo4fFHCl/vlzZe
         QawLiBFX88r8laymNHDbkenvC8X4iVVtr/+2dbJmA/OmU6vKgR4YRSogjgvnM6D7/I3c
         GcSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530F1hyWVOgjo4nYab6f/zvpi7PiSJkBOS5j6t9xqvAOxL2SyVK3
	uqbL3OiAShzXrEWeM2DAQqU=
X-Google-Smtp-Source: ABdhPJxRuliBhdJndozYyVwH8VDFOMVoB1OZVtHy1SmBPlL0KwZqj8KgVjf3hvMccQ18k59Dg36GSw==
X-Received: by 2002:a9d:2487:: with SMTP id z7mr11579496ota.133.1604327444557;
        Mon, 02 Nov 2020 06:30:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:1001:: with SMTP id v1ls912682oor.10.gmail; Mon, 02
 Nov 2020 06:30:44 -0800 (PST)
X-Received: by 2002:a4a:2e16:: with SMTP id x22mr12220285ool.84.1604327444168;
        Mon, 02 Nov 2020 06:30:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604327444; cv=none;
        d=google.com; s=arc-20160816;
        b=P8B4zhAk8FMSYZN4QAChEnrTGn1L5LSUFRLkOzeqUp+7DKYqWsqk8nh73E97fm1kE1
         11A15AoInv+SDMV5UvTYMwJ/lWfmPHx8V2LkwrXhUiDQC31NuZU+DI/fzu1S8P8wTwoe
         no8ZdaTuTCuU625pxlai765SHxgGLTsmo5Vg69kRtGrvTDIepTAoneYYt9777Drhhwsi
         Wsa0V3YVHXAw0Zb5sMKTqyzEnfEfiF/upBO1Lya2dzeuyfrxZZRrkTE3mNZnMSi/VjrP
         pKFYnnXrtUj1sErDJVnIqzdPxtxEGbypsnTNTWhVOM3K+ZKhLOnE40ac9ElAI15VGf9k
         rwYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HgoHjvHTKD+aahDSfC3sk1RkQjJwPPtUoTUfQVXKlxE=;
        b=W6aRyiWXa4+dwA2MjZgRlo2Ox3tAmeJMxgvswbaY1SJ3svrXGt4iVUJBgf1Ju+J/Yl
         V9Y3bRc30kDyG+1MnPh0JXovtpOKCMsdBp7ZYspghEmWqyCp40Vos3tO5HBnpHjfQxBd
         1k2GqUyqwnKCeonF0l+cJiiQKT8omXvPNPagKfdWY3btMxa9Jlt+gWrMnSAOW6raxipL
         pZI8QRRFuxhJwMKC70H2whmCIVQheawkTExStIuabnpoqh6wiNZSZ63jzA5yx70TS3Il
         RmekbTtCw8IPC/LaWWpClJmY6shC9fWG4qpCMctEWMdk49hL7Hk8854pN4ui566twMNt
         WpCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OHUwdFEC;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id v11si1058821oiv.0.2020.11.02.06.30.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 06:30:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-1eFeWNgsO9erQluVajwL9A-1; Mon, 02 Nov 2020 09:30:41 -0500
X-MC-Unique: 1eFeWNgsO9erQluVajwL9A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77319801F99;
	Mon,  2 Nov 2020 14:30:39 +0000 (UTC)
Received: from localhost (ovpn-13-83.pek2.redhat.com [10.72.13.83])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 497FF10013BD;
	Mon,  2 Nov 2020 14:30:38 +0000 (UTC)
Date: Mon, 2 Nov 2020 22:30:35 +0800
From: "bhe@redhat.com" <bhe@redhat.com>
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>,
	Rajender M <manir@vmware.com>, Yiu Cho Lau <lauyiuch@vmware.com>,
	Peter Jonasson <pjonasson@vmware.com>,
	Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Message-ID: <20201102143035.GA3177@MiWiFi-R3L-srv>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=OHUwdFEC;
       spf=pass (google.com: domain of bhe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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

On 11/02/20 at 02:15pm, Rahul Gopakumar wrote:
> Hi Baoquan,
>=20
> There could still be some memory initialization problem with
> the draft patch. I see a lot of page corruption errors.
>=20
> BUG: Bad page state in process swapper  pfn:ab0803c
>=20
> Here is the call trace
>=20
> [    0.262826]  dump_stack+0x57/0x6a
> [    0.262827]  bad_page.cold.119+0x63/0x93
> [    0.262828]  __free_pages_ok+0x31f/0x330
> [    0.262829]  memblock_free_all+0x153/0x1bf
> [    0.262830]  mem_init+0x23/0x1f2
> [    0.262831]  start_kernel+0x299/0x57a
> [    0.262832]  secondary_startup_64_no_verify+0xb8/0xbb
>=20
> I don't see this in dmesg log with vanilla kernel.
>=20
> It looks like the overhead due to this initialization problem
> is around 3 secs.
>=20
> [    0.262831]  start_kernel+0x299/0x57a
> [    0.262832]  secondary_startup_64_no_verify+0xb8/0xbb
> [    3.758185] Memory: 3374072K/1073740756K available (12297K kernel code=
, 5778Krwdata, 4376K rodata, 2352K init, 6480K bss, 16999716K reserved, 0K =
cma-reserved)
>=20
> But the draft patch is fixing the initial problem
> reported around 2 secs (log snippet below) hence the total
> delay of 1 sec.
>=20
> [    0.024752]   Normal zone: 1445888 pages used for memmap
> [    0.024753]   Normal zone: 89391104 pages, LIFO batch:63
> [    0.027379] ACPI: PM-Timer IO Port: 0x448

So, you mean with the draft patch applied, the initial performance
regression goes away, just many page corruption errors with call trace
are seen, right? And the performance regression is about 2sec delay in
your system?

Could you tell how you setup vmware VM so that I can ask our QA for
help to create a vmware VM for me to test? I tested the draft patch on
bare metal system with more than 1T memory, didn't see the page
corruption call trace, need reproduce and have a look.

>=20
>=20
> ________________________________________
> From: Rahul Gopakumar <gopakumarr@vmware.com>
> Sent: 22 October 2020 10:51 PM
> To: bhe@redhat.com
> Cc: linux-mm@kvack.org; linux-kernel@vger.kernel.org; akpm@linux-foundati=
on.org; natechancellor@gmail.com; ndesaulniers@google.com; clang-built-linu=
x@googlegroups.com; rostedt@goodmis.org; Rajender M; Yiu Cho Lau; Peter Jon=
asson; Venkatesh Rajaram
> Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Ke=
rnel
>=20
> Hi Baoquan,
>=20
> >>=C2=A0Can you tell how you measure the boot time?
>=20
> Our test is actually boothalt, time reported by this test
> includes both boot-up and shutdown time.
>=20
> >> At above, you said "Patch on latest commit - 20.161 secs",
> >> could you tell where this 20.161 secs comes from,
>=20
> So this time is boot-up time + shutdown time.
>=20
> From the dmesg.log it looks like during the memmap_init
> it's taking less time in the patch. Let me take a closer look to
> confirm this and also to find where the 1-sec delay in the patch
> run is coming from.
>=20
>=20
> From: bhe@redhat.com <bhe@redhat.com>
> Sent: 22 October 2020 9:34 AM
> To: Rahul Gopakumar <gopakumarr@vmware.com>
> Cc: linux-mm@kvack.org <linux-mm@kvack.org>; linux-kernel@vger.kernel.org=
 <linux-kernel@vger.kernel.org>; akpm@linux-foundation.org <akpm@linux-foun=
dation.org>; natechancellor@gmail.com <natechancellor@gmail.com>; ndesaulni=
ers@google.com <ndesaulniers@google.com>; clang-built-linux@googlegroups.co=
m <clang-built-linux@googlegroups.com>; rostedt@goodmis.org <rostedt@goodmi=
s.org>; Rajender M <manir@vmware.com>; Yiu Cho Lau <lauyiuch@vmware.com>; P=
eter Jonasson <pjonasson@vmware.com>; Venkatesh Rajaram <rajaramv@vmware.co=
m>
> Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Ke=
rnel
>=20
> Hi Rahul,
>=20
> On 10/20/20 at 03:26pm, Rahul Gopakumar wrote:
> > >> Here, do you mean it even cost more time with the patch applied?
> >
> > Yes, we ran it multiple times and it looks like there is a
> > very minor increase with the patch.
> >
> ......
> > On 10/20/20 at 01:45pm, Rahul Gopakumar wrote:
> > > Hi Baoquan,
> > >
> > > We had some trouble applying the patch to problem commit and the late=
st upstream commit. Steven (CC'ed) helped us by providing the updated draft=
 patch. We applied it on the latest commit (3e4fb4346c781068610d03c12b16c0c=
fb0fd24a3), and it doesn't look like improving the performance numbers.
> >
> > Thanks for your feedback. From the code, I am sure what the problem is,
> > but I didn't test it on system with huge memory. Forget mentioning my
> > draft patch is based on akpm/master branch since it's a mm issue, it
> > might be a little different with linus's mainline kernel, sorry for the
> > inconvenience.
> >
> > I will test and debug this on a server with 4T memory in our lab, and
> > update if any progress.
> >
> > >
> > > Patch on latest commit - 20.161 secs
> > > Vanilla latest commit - 19.50 secs
> >
>=20
> Can you tell how you measure the boot time? I checked the boot logs you
> attached, E.g in below two logs, I saw patch_dmesg.log even has less
> time during memmap init. Now I have got a machine with 1T memory for
> testing, but didn't see obvious time cost increase. At above, you said
> "Patch on latest commit - 20.161 secs", could you tell where this 20.161
> secs comes from, so that I can investigate and reproduce on my system?
>=20
> patch_dmesg.log:
> [=C2=A0=C2=A0=C2=A0 0.023126] Initmem setup node 1 [mem 0x000000560000000=
0-0x000000aaffffffff]
> [=C2=A0=C2=A0=C2=A0 0.023128] On node 1 totalpages: 89128960
> [=C2=A0=C2=A0=C2=A0 0.023129]=C2=A0=C2=A0 Normal zone: 1392640 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.023130]=C2=A0=C2=A0 Normal zone: 89128960 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 0.023893] Initmem setup node 2 [mem 0x000000ab0000000=
0-0x000001033fffffff]
> [=C2=A0=C2=A0=C2=A0 0.023895] On node 2 totalpages: 89391104
> [=C2=A0=C2=A0=C2=A0 0.023896]=C2=A0=C2=A0 Normal zone: 1445888 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.023897]=C2=A0=C2=A0 Normal zone: 89391104 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 0.026744] ACPI: PM-Timer IO Port: 0x448
> [=C2=A0=C2=A0=C2=A0 0.026747] ACPI: Local APIC address 0xfee00000
>=20
> vanilla_dmesg.log:
> [=C2=A0=C2=A0=C2=A0 0.024295] Initmem setup node 1 [mem 0x000000560000000=
0-0x000000aaffffffff]
> [=C2=A0=C2=A0=C2=A0 0.024298] On node 1 totalpages: 89128960
> [=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 1392640 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.024299]=C2=A0=C2=A0 Normal zone: 89128960 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 0.025289] Initmem setup node 2 [mem 0x000000ab0000000=
0-0x000001033fffffff]
> [=C2=A0=C2=A0=C2=A0 0.025291] On node 2 totalpages: 89391104
> [=C2=A0=C2=A0=C2=A0 0.025292]=C2=A0=C2=A0 Normal zone: 1445888 pages used=
 for memmap
> [=C2=A0=C2=A0=C2=A0 0.025293]=C2=A0=C2=A0 Normal zone: 89391104 pages, LI=
FO batch:63
> [=C2=A0=C2=A0=C2=A0 2.096982] ACPI: PM-Timer IO Port: 0x448
> [=C2=A0=C2=A0=C2=A0 2.096987] ACPI: Local APIC address 0xfee00000
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201102143035.GA3177%40MiWiFi-R3L-srv.
