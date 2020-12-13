Return-Path: <clang-built-linux+bncBCKPFB7SXUERBD7A3D7AKGQEE3Y4ITQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5112D8E33
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 16:15:28 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id p6sf4673500pjr.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 07:15:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607872527; cv=pass;
        d=google.com; s=arc-20160816;
        b=SOPbQftUgn2BLx+nL5euAjd+TfM7QM6Hg/D4Qx27aqqrJ1Z+7BG3hIQdT93idOi1Rm
         Qyiqx2JUFIqazx1+CWRZuIwBQcKQHch6jiXqJIGGHhix4byg9AbRyryjkCSA5fJnCKu8
         blSisTmhTn5eqm0APjweQd8/bnvVhPc+p5mfSlbaKi0rpaE/j+bJ7RQ0hEfkzqCrGkce
         I9NfSLb10ASxHZinuNxPOHBMtBln8tJzYsrFf0407q6OSs8zfVUz9NL3d4y13Vjp04SM
         o8hwMITJn8/aAYBGD2odCY99nqyZKBspH6Jwy7lqASkOkrNX4ZmNwQDU9P/1h7hr1WVA
         KRVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=J58SbHm/kmkh8n/tMPcplhAUCj8PRi6d58DodNsWwtw=;
        b=mLYRGSszaqXNQGyh4EhmYOf9DwjxCiZc2aNHfWwt6iu/NawHb4HXiU1DS27GcDmMvL
         5hAQ7xen6QzgpPgjiWkE083zaByVoEmfPwhxeqf2Oi+U+ioGfxxf6OWqAdF5lMTAntS2
         nMBVAWlhmIETKDLbxzx0rYXrOB+Md1Fw7JpEaeyjYhhFetf+AceSl+PTLD/++h+SskQX
         DfnuZMTQPKEDyggxC4L8PoWB2iV9hsLRue7WD5AkKt2zc9rJrp1XQOnwlo3X1VtyZbpI
         5rFc0Iyn5nybEJUEFmQ0GzKovt7luTM1OZeW9qyWBgrzLBMwRbFNa34bpERyROIHyQJ0
         dz9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hK5RUzDb;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J58SbHm/kmkh8n/tMPcplhAUCj8PRi6d58DodNsWwtw=;
        b=AjFslvsqDvFl002S68ahiCwbRc+faEULI0PKb08BiRBGtUseVRDPpXbxKvCYU628Oc
         Z/c9RhoJx4H39Q1h1VVwcy+q0l+EnlJEGhR9k7mDC4mg2vurbkeXmgeilNJlhNdCzGlG
         VRS8mbofb/8MoyHoHfcILbaZV5bX4CHhPjnvq0qco+bXKzMBmrybaHUNJMBMTdOEzE3G
         9ACxaLHymtaXX7ZX0rSQo1YbKb5PkJBa2HfdJEMIkT88PM/egrnT+UOs/wntNxerJG/I
         BXYiCNKla0X5BOzZY7lvIBD3VBish6LMxJ8wA/4l5k0mlK7mPREgW6Xne4G7X//ZykOW
         qtHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J58SbHm/kmkh8n/tMPcplhAUCj8PRi6d58DodNsWwtw=;
        b=jufCgvAXK1Up1eKQ4UICar4ye3hWtjmKjOEnwELNxzvTrBKe20pW5nlBPCK406/04N
         lh/ZsUE2P6q3CqntG+5pmcytq29d1G90fo0TpFCJBrPfz5n4i0jj6VxEyt01ync5l+UB
         0PCA/i4WpcS1Rm06Eu++IAngZuRyZD3eYFpxhdk8t4KddP7wV2FrhaXh2xz2YORx56x7
         JwHejwftt8+61YsXd77ZtgQtMmffjbaglynpgVeN9O3Fai6styLEJaQGAVUCQp0Oa9t+
         C33aAewR0+kSafb8q9EK7omuGevTgs/QI0ECfvwD4YH5pWGVWJsCyNkPLpX1MUE1kfBT
         o6aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302wQArOqqZs0nNxxJBmUHj8x/KAozyRRQA8VE0FgqNg4r4bw+t
	w4PYtOSppguUAPQms6a1yUc=
X-Google-Smtp-Source: ABdhPJx83OoqxTbuv/nQ6G1EOfHhOSsJjOWva0MzUyYOtAB5PJzY4TJgbRRRPiyzrgqm82O3vAKwjQ==
X-Received: by 2002:a63:e150:: with SMTP id h16mr20561961pgk.390.1607872527282;
        Sun, 13 Dec 2020 07:15:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls7279943pjz.1.canary-gmail;
 Sun, 13 Dec 2020 07:15:26 -0800 (PST)
X-Received: by 2002:a17:902:b415:b029:d6:ec35:755b with SMTP id x21-20020a170902b415b02900d6ec35755bmr18711361plr.47.1607872526630;
        Sun, 13 Dec 2020 07:15:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607872526; cv=none;
        d=google.com; s=arc-20160816;
        b=v42qmM5xPyGYd8h0YBsXYTvBzTxE4aEIvysW1JCqLzvsqhkXxJ5SsEFtdtfjSc9Csh
         /WjKJnhxm+ZVc2G+9R55qU4IHo5Hir9H2uwIL6gljczBCzTZrTzZSDyL7mX6/oeOiyOA
         mtsThV8TNVbt7AT/FNDfDykO8uuKcNgRuqvrOWXzHRI7mJ0Wcy59YV/GwDgq55md7XOy
         CMk5x5erPLGHCrIABcEGmL7H/ayuxWf1tQh/ERemVoXKybIYFXBnbEy589Kzb2vdVajC
         bytsGKMnsyNMih4M5s8/MSGXMDLB6mRmQ2AmxsuAxWV2GjWkCIUFTvKj5hjLWeDXWGZl
         P7Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QFK1ZDhIoaUyExjTXZFlOfOZ3dXuJkhzO36EQH+4tPU=;
        b=S2y7B0gqzhJjV1YzBQZQEAcvivZejL+otkLZewkRIy/i51X9IHbqGLGa/mZl3l3Ugz
         O+u17I8Whv/n3WjbgONsQkeDqaI0WxHaxif/oLfioUfyKLSufQK9DzFclOUNZCfmYcK5
         0Eib8F1+Nf0tEeNgbZcDUotUDJCeTN4g7vuvaFYMIK+zMINXq2x+m36ivTC0TC6rFyNb
         jDzoAxCjgsTao03AxtChIGAkGzDOKzHeUowvHG/3uXkpTNLm04UYK4AMydyW6ltgrH3K
         VTcaTMWfa9bWzmF32eUYJG7Y15Rrju7s0T14XBsM+Lebc5nldRBmTIAs+AYaQf8SHnj1
         ui9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hK5RUzDb;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q15si1107553pfs.1.2020.12.13.07.15.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 07:15:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-P9UtheO6P4CJz-VJ4CrRdw-1; Sun, 13 Dec 2020 10:15:21 -0500
X-MC-Unique: P9UtheO6P4CJz-VJ4CrRdw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82AD1107ACF7;
	Sun, 13 Dec 2020 15:15:19 +0000 (UTC)
Received: from localhost (ovpn-12-67.pek2.redhat.com [10.72.12.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1BBF19713;
	Sun, 13 Dec 2020 15:15:18 +0000 (UTC)
Date: Sun, 13 Dec 2020 23:15:16 +0800
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
	Venkatesh Rajaram <rajaramv@vmware.com>,
	Mike Rapoport <rppt@kernel.org>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Message-ID: <20201213151516.GA12368@MiWiFi-R3L-srv>
References: <20201022040440.GX25604@MiWiFi-R3L-srv>
 <DM6PR05MB5292D8B85FA9DDE263F6147AA41D0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <DM6PR05MB5292DF14DF1C82FFE001AC24A4100@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201102143035.GA3177@MiWiFi-R3L-srv>
 <DM6PR05MB5292FD196FF6B18DCB47CE25A4110@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201112145149.GN8486@MiWiFi-R3L-srv>
 <DM6PR05MB52920B2D4267AD7D073D3C36A4FF0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201122010844.GR8486@MiWiFi-R3L-srv>
 <DM6PR05MB52927C9962D498F1E49BABAAA4FB0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <BYAPR05MB5800E8478DF45F39BE06F8ADA4CA0@BYAPR05MB5800.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <BYAPR05MB5800E8478DF45F39BE06F8ADA4CA0@BYAPR05MB5800.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hK5RUzDb;
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

On 12/11/20 at 04:16pm, Rahul Gopakumar wrote:
> Hi Baoquan,
>=20
> We re-evaluated your last patch and it seems to be fixing the
> initial performance bug reported. During our previous testing,
> we did not apply the patch rightly hence it was reporting
> some issues.=20
>=20
> Here is the dmesg log confirming no delay in the draft patch.
>=20
> Vanilla (5.10 rc3)
> ------------------
>=20
> [    0.024011] On node 2 totalpages: 89391104
> [    0.024012]   Normal zone: 1445888 pages used for memmap
> [    0.024012]   Normal zone: 89391104 pages, LIFO batch:63
> [    2.054646] ACPI: PM-Timer IO Port: 0x448 --------------> 2 secs delay
>=20
> Patch
> ------
>=20
> [    0.024166] On node 2 totalpages: 89391104
> [    0.024167]   Normal zone: 1445888 pages used for memmap
> [    0.024167]   Normal zone: 89391104 pages, LIFO batch:63
> [    0.026694] ACPI: PM-Timer IO Port: 0x448 --------------> No delay
>=20
> Attached dmesg logs. Let me know if anything is needed from our end.

I posted formal patchset to fix this issue. The patch 1 is doing the
fix, and almost the same as the draft v2 patch I attached in this thread.
Please feel free to help test and add your Tested-by: tag in the patch
thread if possible.

>=20
>=20
>=20
> From: Rahul Gopakumar <gopakumarr@vmware.com>
> Sent: 24 November 2020 8:33 PM
> To: bhe@redhat.com <bhe@redhat.com>
> Cc: linux-mm@kvack.org <linux-mm@kvack.org>; linux-kernel@vger.kernel.org=
 <linux-kernel@vger.kernel.org>; akpm@linux-foundation.org <akpm@linux-foun=
dation.org>; natechancellor@gmail.com <natechancellor@gmail.com>; ndesaulni=
ers@google.com <ndesaulniers@google.com>; clang-built-linux@googlegroups.co=
m <clang-built-linux@googlegroups.com>; rostedt@goodmis.org <rostedt@goodmi=
s.org>; Rajender M <manir@vmware.com>; Yiu Cho Lau <lauyiuch@vmware.com>; P=
eter Jonasson <pjonasson@vmware.com>; Venkatesh Rajaram <rajaramv@vmware.co=
m>
> Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Ke=
rnel=20
> =C2=A0
> Hi Baoquan,
>=20
> We applied the new patch to 5.10 rc3 and tested it. We are still
> observing the same page corruption issue which we saw with the
> old patch. This is causing 3 secs delay in boot time.
>=20
> Attached dmesg log from the new patch and also from vanilla
> 5.10 rc3 kernel.
>=20
> There are multiple lines like below in the dmesg log of the
> new patch.
>=20
> "BUG: Bad page state in process swapper=C2=A0 pfn:ab08001"
>=20
> ________________________________________
> From: bhe@redhat.com <bhe@redhat.com>
> Sent: 22 November 2020 6:38 AM
> To: Rahul Gopakumar
> Cc: linux-mm@kvack.org; linux-kernel@vger.kernel.org; akpm@linux-foundati=
on.org; natechancellor@gmail.com; ndesaulniers@google.com; clang-built-linu=
x@googlegroups.com; rostedt@goodmis.org; Rajender M; Yiu Cho Lau; Peter Jon=
asson; Venkatesh Rajaram
> Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Ke=
rnel
>=20
> On 11/20/20 at 03:11am, Rahul Gopakumar wrote:
> > Hi Baoquan,
> >
> > To which commit should we apply the draft patch. We tried applying
> > the patch to the commit 3e4fb4346c781068610d03c12b16c0cfb0fd24a3
> > (the one we used for applying the previous patch) but it fails.
>=20
> I tested on 5.10-rc3+. You can append below change to the old patch in
> your testing kernel.
>=20
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index fa6076e1a840..5e5b74e88d69 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -448,6 +448,8 @@ defer_init(int nid, unsigned long pfn, unsigned long =
end_pfn)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (end_pfn < pgdat_end_pfn(NO=
DE_DATA(nid)))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return false;
>=20
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (NODE_DATA(nid)->first_deferred_=
pfn !=3D ULONG_MAX)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return true;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * We start only with one=
 section of pages, more pages are added as
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * needed until the rest =
of deferred pages are initialized.



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201213151516.GA12368%40MiWiFi-R3L-srv.
