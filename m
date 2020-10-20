Return-Path: <clang-built-linux+bncBCKPFB7SXUERBQX7XP6AKGQE4OWXWJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 51041293F66
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 17:18:27 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id k9sf2361140ybf.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 08:18:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603207106; cv=pass;
        d=google.com; s=arc-20160816;
        b=BhI5AjAi5fegnkGEIoI8m+IegKa3bsStEc5eirWuynJ2M6KpP0uUwbmb1/hy6q1UtP
         T2cjpo51od0pVQe7BWxiAjEYXDm7y7GaSEpp059L3s9hb9Kd0tur5UDgQYYCrSg+yBXA
         VAMLXhzPNkxytuxghvrnH04lk9dfFxeK6yCfpKKaRY25g9NEgUeiWYb3EPGWiZaoUtBh
         F1dlHBpFYJp445jpQ6rpBMsm/JdVYht3skvOMy7F+Pq++hIPJVSAMsi241vqfbsF7bL5
         zW8duOYyzuTLKA+K6KgWytcvs8IrW0/9wkBEFpuT45Bqh9pqewFnoDKkUj3UX9IGl0gH
         273A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dzABdWfqVPTKDn44FSgPA5rdkducQlqNqQd77M87N44=;
        b=W07vzgZeQxpWUb609Noax7nKHuZhnA5+unU6n2uqeK0ugqheMnEltiUYK0Tw+FRb95
         mf8mHejJckOLThp3RybBcWDMJOU0fICiFWWVNoRcmpaIqqtyxFOhi4qD9KzgPfMk2H64
         fj7JC2KnsQYtLyMDHSd7LqA7CqwpZUErM2DJBVyaAIsloDG2M9yaGouAQr5/L72FKwcg
         UiF54Lzcmar2SUraud7sSGMlwhm8O9MV7lUeh8ZJbpbb12CArozTumyyLt/ZiPaY5uto
         UxkHSrKTaA7kbxhcMzpfT2CdpVsLCvrB6hIm2o79J5E38EkfaJgMyIa1D/vC02ACYTz2
         1rjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FfFnGZ3e;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dzABdWfqVPTKDn44FSgPA5rdkducQlqNqQd77M87N44=;
        b=H8VoVOOogLlNxmHFtqM8Mb6foaodYsK0TPX3MAWU2z+zlx9PneJI8iwzOlh87Tbj+H
         UttpwnlyvOcrxVksxwy90hHHEo5fw+rb4ZMgAh1f4H3r+LS0FmmhH+a5Wj3KspOfD37N
         hu51EtYLfTUZnwtzKEhYBe+wouP5tJeT+Y5CxULtwk6o7boYCwFdLjv/64AFlJAQTP3w
         tTG9g3FAGGyhgr6a/sJLu1eZymajwVPo/IoDqU4lmdMy3TcSY+UNxZv+usnhx4XkL5m4
         YzIGfdR6vwZsFOxE8cLx7wjIUOJHjmiYGDi72k+woMpvQfwh1NkSWt86vTIoeuWXrE9s
         QIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dzABdWfqVPTKDn44FSgPA5rdkducQlqNqQd77M87N44=;
        b=ljEnBCXfn2TwAYzNNDVso/Hw4fRBvi9bNaTF2m7yOjr4Fs8JaMsR0glA2zsvGPdZ11
         X/S87EeMozw0B/fAdz2IAFYIxmTCO3Ucfg1fHyi6ct5YZX9XxdnVs22AK9HjAvkHdsG7
         3gVF1MzQ4Hb68TekFhnvGHjvifGbSzbLDc3bku/DKdmUATPtbGAsv4MpHj4OGQFJlfRw
         cLNKQbU0xsSw7ArsBtySn90PI4xFMXvNnPr6v5Als39vZ1fGiKLg+G5Mv22n5+aKdzLc
         QiVJFnPRUBGrSoebCnnazJVNz1Rz0DTilCSTLOGRmCjY4piZYXGm4Md8J9WhKbT7gQNm
         XWeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JQxktxxtel/VZu8dK77QTRFEDPizqgBKAjZ4dijMXnTVFJd0I
	abpeu+QAZc2/WzS6zZ/aUbM=
X-Google-Smtp-Source: ABdhPJwyO2V8UghbPcycpYmDYqGX+Z2kUymnYgaNMYJTAil3aqF62hhoGMqmVhd6ytsWojxvkrp0dQ==
X-Received: by 2002:a25:b8b:: with SMTP id 133mr4808411ybl.257.1603207106299;
        Tue, 20 Oct 2020 08:18:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c04:: with SMTP id s4ls1170979ybs.0.gmail; Tue, 20 Oct
 2020 08:18:25 -0700 (PDT)
X-Received: by 2002:a25:8e0f:: with SMTP id p15mr4946415ybl.129.1603207105764;
        Tue, 20 Oct 2020 08:18:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603207105; cv=none;
        d=google.com; s=arc-20160816;
        b=fgAl7HRLLbOuvv1QewxFQc/nrvKdQtLhdosvuOjR9Ayx6jmUe2hK+gN9LHpBcaJzeQ
         fq25tLdME0pjiymeR6+s94VLGizAuH5AWE3I8z424oiJCxt+WcyerbBlF3Omxn+dYSyx
         h3yCyQdn0HLAFMHicxVnFkK/EoOAPu5dqWs4rLLmr9Dppx7UwWAxx9C+3VmSYA1fV0q7
         S+FKJ1l4TY8IiFZBYTbOKbXdKK8RuA3PIyCCbYh1TK0wm03K20JFbGXxnKXgUyFINN+v
         2RSvrLcSF0i64/12MZ07p8rtDqGwbAX37EEdqgxYY9ig+g8X85Yn0DKKPtD9NhzQSYbj
         WDew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+fq27Lrjh4A+WF1/QMsoiHGG+aBtxAgUfHzjn77I/58=;
        b=BtVS/Je3Cqej9zsC4AWnxfqxUn/tZe/z7EaaLcfrsqagthjtAGaABz7cNbQFaALh5B
         TySxgMay89e581Ep180Wf6rUpWxvm+9I+iHvs6JDgeuSZdX+RbGjfLyY5GNVc/BB1rXW
         YXIYYtitQkfxN0CkOC1gcB6n4qCQ1cWuldM9dc9RNRm3+TUKOeSL4+6G7iaU9w2y+tKY
         5yf53AimRJN8S8oTIRC54YwI42S0ZirKM1hRrNvE6sDicGuoiLnaFLjr3ijhG8i0qD8W
         Ebw/ZZbi0ufYDxCZ5MUazUjXJCRdKFV667tV0uoSSooKI4mTCgEtWaW01ml9paJ3O0Rd
         gvYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FfFnGZ3e;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b16si158146vkn.5.2020.10.20.08.18.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:18:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-563-5n0XqEwfO1i_tqMwy6QGFg-1; Tue, 20 Oct 2020 11:18:20 -0400
X-MC-Unique: 5n0XqEwfO1i_tqMwy6QGFg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E417F64145;
	Tue, 20 Oct 2020 15:18:17 +0000 (UTC)
Received: from localhost (ovpn-12-44.pek2.redhat.com [10.72.12.44])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC9156EF45;
	Tue, 20 Oct 2020 15:18:16 +0000 (UTC)
Date: Tue, 20 Oct 2020 23:18:14 +0800
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
Message-ID: <20201020151814.GU25604@MiWiFi-R3L-srv>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FfFnGZ3e;
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

On 10/20/20 at 01:45pm, Rahul Gopakumar wrote:
> Hi Baoquan,
>=20
> We had some trouble applying the patch to problem commit and the latest u=
pstream commit. Steven (CC'ed) helped us by providing the updated draft pat=
ch. We applied it on the latest commit (3e4fb4346c781068610d03c12b16c0cfb0f=
d24a3), and it doesn't look like improving the performance numbers.

Thanks for your feedback. From the code, I am sure what the problem is,
but I didn't test it on system with huge memory. Forget mentioning my
draft patch is based on akpm/master branch since it's a mm issue, it
might be a little different with linus's mainline kernel, sorry for the
inconvenience.

I will test and debug this on a server with 4T memory in our lab, and
update if any progress.

>=20
> Patch on latest commit - 20.161 secs
> Vanilla latest commit - 19.50 secs

Here, do you mean it even cost more time with the patch applied?

>=20
> Here is the draft patch we tried
>=20
> ------------------------
>=20
> diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> index 8e7b8c6c576e..ff5fa4c3889e 100644
> --- a/arch/ia64/mm/init.c
> +++ b/arch/ia64/mm/init.c
> @@ -537,7 +537,7 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
> =C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (map_start < map_end)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memmap_init=
_zone((unsigned long)(map_end - map_start),
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0args->nid, args->zone, page_to_pfn=
(map_start),
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0args->nid, args->zone, page_to_pfn=
(map_start), page_to_pfn(map_end),
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MEMINIT_EARLY, NULL);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;
> =C2=A0}
> @@ -547,7 +547,7 @@ memmap_init (unsigned long size, int nid, unsigned lo=
ng zone,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long start_pfn)
> =C2=A0{
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!vmem_map) {
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(size,=
 nid, zone, start_pfn,
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(size,=
 nid, zone, start_pfn, start_pfn + size,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MEMINIT_EARLY, NULL);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct page=
 *start;
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 16b799a0522c..65e34b370e33 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2416,7 +2416,7 @@ extern int __meminit __early_pfn_to_nid(unsigned lo=
ng pfn,
> =C2=A0
> =C2=A0extern void set_dma_reserve(unsigned long new_dma_reserve);
> =C2=A0extern void memmap_init_zone(unsigned long, int, unsigned long, uns=
igned long,
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum meminit_context, =
struct vmem_altmap *);
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long, enum me=
minit_context, struct vmem_altmap *);
> =C2=A0extern void setup_per_zone_wmarks(void);
> =C2=A0extern int __meminit init_per_zone_wmark_min(void);
> =C2=A0extern void mem_init(void);
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index ce3e73e3a5c1..03fddd8f4b11 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -728,7 +728,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, =
unsigned long start_pfn,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * expects the zone spans the pfn range=
. All the pages in the range
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * are reserved so nobody should be tou=
ching them so we should be safe
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */
> - =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(nr_pages, nid, zone_idx(zone), st=
art_pfn,
> + =C2=A0 =C2=A0 =C2=A0 memmap_init_zone(nr_pages, nid, zone_idx(zone), st=
art_pfn, 0,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 MEMINIT_HOTPLUG, altmap);
> =C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set_zone_contiguous(zone);
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 780c8f023b28..fe80055ea59c 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5989,8 +5989,8 @@ overlap_memmap_init(unsigned long zone, unsigned lo=
ng *pfn)
> =C2=A0 * done. Non-atomic initialization, single-pass.
> =C2=A0 */
> =C2=A0void __meminit memmap_init_zone(unsigned long size, int nid, unsign=
ed long zone,
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long start_pf=
n, enum meminit_context context,
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct vmem_altmap *al=
tmap)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long start_pf=
n, unsigned long zone_end_pfn,
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum meminit_context c=
ontext, struct vmem_altmap *altmap)
> =C2=A0{
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long pfn, end_pfn =3D start_pf=
n + size;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct page *page;
> @@ -6024,7 +6024,7 @@ void __meminit memmap_init_zone(unsigned long size,=
 int nid, unsigned long zone,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (context=
 =3D=3D MEMINIT_EARLY) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (overlap_memmap_init(zone, &pfn))
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (defer_init(nid, pfn, end_pfn))
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (defer_init(nid, pfn, zone_end_pfn))
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
> =C2=A0
> @@ -6150,7 +6150,7 @@ void __meminit __weak memmap_init(unsigned long siz=
e, int nid,
> =C2=A0
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (end_pfn=
 > start_pfn) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0size =3D end_pfn - start_pfn;
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 memmap_init_zone(size, nid, zone, start_pfn,
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 M=
EMINIT_EARLY, NULL);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
>=20
>=20
> ------------------------
>=20
> We have attached default dmesg logs and also dmesg logs collected with me=
mblock=3Ddebug kernel cmdline for both vanilla and patched kernels. Let me =
know if you need more info.
>=20
>=20
>=20
> From: bhe@redhat.com <bhe@redhat.com>
> Sent: 13 October 2020 6:47 PM
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
rnel=20
> =C2=A0
> Hi Rahul,
>=20
> On 10/12/20 at 05:21pm, Rahul Gopakumar wrote:
> > Hi Baoquan,
> >=20
> > Attached collected dmesg logs for with and without
> > commit after adding memblock=3Ddebug to kernel cmdline.
>=20
> Can you test below draft patch and see if it works for you?=20
>=20
> From a2ea6caef3c73ad9efb2dd2b48039065fe430bb2 Mon Sep 17 00:00:00 2001
> From: Baoquan He <bhe@redhat.com>
> Date: Tue, 13 Oct 2020 20:05:30 +0800
> Subject: [PATCH] mm: make memmap defer init only take effect per zone
>=20
> Deferred struct page init is designed to work per zone. However since
> commit 73a6e474cb376 ("mm: memmap_init: iterate over memblock regions
> rather that check each PFN"), the handling is mistakenly done in all memo=
ry
> ranges inside one zone. Especially in those unmovable zones of multiple n=
odes,
> memblock reservation split them into many memory ranges. This makes
> initialized struct page more than expected in early stage, then increases
> much boot time.
>=20
> Let's fix it to make the memmap defer init handled in zone wide, but not =
in
> memory range of one zone.
>=20
> Signed-off-by: Baoquan He <bhe@redhat.com>
> ---
> =C2=A0arch/ia64/mm/init.c | 4 ++--
> =C2=A0include/linux/mm.h=C2=A0 | 5 +++--
> =C2=A0mm/memory_hotplug.c | 2 +-
> =C2=A0mm/page_alloc.c=C2=A0=C2=A0=C2=A0=C2=A0 | 6 +++---
> =C2=A04 files changed, 9 insertions(+), 8 deletions(-)
>=20
> diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> index ef12e097f318..27ca549ff47e 100644
> --- a/arch/ia64/mm/init.c
> +++ b/arch/ia64/mm/init.c
> @@ -536,7 +536,7 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (map_start < map_end)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zone((unsigned long)(map_end - map_sta=
rt),
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 args->nid, args->zone, page_to_pfn(=
map_start),
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 args->nid, args->zone, page_to_pfn(=
map_start), page_to_pfn(map_end),
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MEMINIT_EARLY, NULL, MI=
GRATE_MOVABLE);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> =C2=A0}
> @@ -546,7 +546,7 @@ memmap_init (unsigned long size, int nid, unsigned lo=
ng zone,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 unsigned long start_pfn)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!vmem_map) {
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 memmap_init_zone(size, nid, zone, start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 memmap_init_zone(size, nid, zone, start_pfn, start_pfn + size,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MEMINIT_EARLY, NULL, MI=
GRATE_MOVABLE);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct page *start;
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index ef360fe70aaf..5f9fc61d5be2 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2439,8 +2439,9 @@ extern int __meminit __early_pfn_to_nid(unsigned lo=
ng pfn,
> =C2=A0#endif
> =C2=A0
> =C2=A0extern void set_dma_reserve(unsigned long new_dma_reserve);
> -extern void memmap_init_zone(unsigned long, int, unsigned long, unsigned=
 long,
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 enum meminit_context, struct vmem_altmap *, int migratetype);
> +extern void memmap_init_zone(unsigned long, int, unsigned long,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 unsigned long, unsigned long, enum meminit_context,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 struct vmem_altmap *, int migratetype);
> =C2=A0extern void setup_per_zone_wmarks(void);
> =C2=A0extern int __meminit init_per_zone_wmark_min(void);
> =C2=A0extern void mem_init(void);
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index b44d4c7ba73b..f9a37e6abc1c 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -732,7 +732,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, =
unsigned long start_pfn,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * expects the zone=
 spans the pfn range. All the pages in the range
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * are reserved so =
nobody should be touching them so we should be safe
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zone(nr_pages, nid, zon=
e_idx(zone), start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zone(nr_pages, nid, zon=
e_idx(zone), start_pfn, 0,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 MEMINIT_HOTPLUG, altmap, migratetype);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set_zone_contiguous(zone=
);
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 2ebf9ddafa3a..e8b19fdd18ec 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -6044,7 +6044,7 @@ overlap_memmap_init(unsigned long zone, unsigned lo=
ng *pfn)
> =C2=A0 * zone stats (e.g., nr_isolate_pageblock) are touched.
> =C2=A0 */
> =C2=A0void __meminit memmap_init_zone(unsigned long size, int nid, unsign=
ed long zone,
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 unsigned long start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 unsigned long start_pfn, unsigned long zone_end_pfn,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 enum meminit_context context,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct vmem_altmap *altmap, int migratetype)
> =C2=A0{
> @@ -6080,7 +6080,7 @@ void __meminit memmap_init_zone(unsigned long size,=
 int nid, unsigned long zone,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if (context =3D=3D MEMINIT_EARLY) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=
 (overlap_memmap_init(zone, &pfn))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 continue;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (defer_init=
(nid, pfn, end_pfn))
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (defer_init=
(nid, pfn, zone_end_pfn))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 }
> =C2=A0
> @@ -6194,7 +6194,7 @@ void __meminit __weak memmap_init(unsigned long siz=
e, int nid,
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if (end_pfn > start_pfn) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 si=
ze =3D end_pfn - start_pfn;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zo=
ne(size, nid, zone, start_pfn,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 memmap_init_zo=
ne(size, nid, zone, start_pfn, range_end_pfn,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 }
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
> --=20
> 2.17.2





--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201020151814.GU25604%40MiWiFi-R3L-srv.
