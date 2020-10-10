Return-Path: <clang-built-linux+bncBCKPFB7SXUERBGFBQX6AKGQE3BUZIWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF38289EAA
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 08:11:38 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x77sf151255pgx.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 23:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602310296; cv=pass;
        d=google.com; s=arc-20160816;
        b=RyQ5ju2nFmCDI616je3vKfjWsflLK6BXeG3sz8GKghtkWu6L1GQalH2ezY4c0sNJ57
         UP6mbh2ZZ/7sw5FTkNjQ/lQ7i9//6J5kkQyWGFV9HcguV/Syqos9+WJYb7DO4/GzOB2t
         xYHzSq9UuPBfHoteIPRySfmb/LEXfyH1yqgZ/yQ+RjXDZDMJ/Xr8tVd7TaBMfM4g2RBl
         trfp+ckSYW3GcaCW63/48nXFvTUgOLS8OTmgQhHDe6S0PZejAxNtqt2iSregHTqD+hOa
         8M9jrE2DXIRACOerMmL2oFiSoQFNC4J+SbRTgUwoJj83aYguFPaSkksVqkSG6EYCbRkX
         estg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kqusorH2FOydZTsydf6z90L7MJIFK6EKWtSA7Dkq3lk=;
        b=QDbYqQg0FvEY+vCeoc5XEIGmvqCpsCyYfLj264ZG9dgq2b+ta4mNWndaLgeOLRCzWv
         QPdRiIjV/Wli07vL5/y4Ur8LJsUQlIzQqnpUfdC/DdhVqQwkuO5iPSOi2m+Y2Tzaosge
         N0WHga27eRQ0YA8VTlMNQAKIPwk5Ut4RMQTFieVHUlzqZfj02EB3fHhShJznVYKQcJLh
         Glhc7WhJ7v9Lf5gsneoXyv5/RUxgBdrps18lICInWZ9Fu0Jp2/WefYMbIy96nDKzHDjS
         HTaCctam8A0N2H/BVisihcTVY4cb2riGZ5Ky+FByy9v93yTfMzGnpeyNsWxMi6DjbXWu
         lnZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Q+xNFPJi;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kqusorH2FOydZTsydf6z90L7MJIFK6EKWtSA7Dkq3lk=;
        b=NcnQg0w1Kq3xt4KAQ8s898gPyDH1VfnmhE+IFK2IrMmYYan4RzCUwF9TH+S+IQQ4IN
         BHP+fpDceqLK8U/Zqed3kA6Lpsxd4/58gZo8wkRpNqipSlCLHhRgCFJAZuQUkPIy9evI
         CB8HBbljWsFv05mDT3NZzEwFhc3oIA6BAlUb/pBCHf1CYSymNNll7Br1Cd4GQkNS4Uup
         crQ5LX3OGCro/b7ujZeE2tZ0d5Hgh7MTOF4Jb4lBg6yV4+QFbL/Q47iRe8UR63fToK7Q
         QI1JJ+RB7KwwaTSYsQTJtitvnHdcWiNuoKSsl3Au7EUU+cGG8Wm3wl6+dZYgaRvn7T6i
         OQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kqusorH2FOydZTsydf6z90L7MJIFK6EKWtSA7Dkq3lk=;
        b=LBAdi1oS3YfhMP4HvtnlTfP060Ijdexa0bonXWlpQgDiOvRr+BTx20vMmQsmjETLKh
         OHGoLqhF9TgKJKSOckmuyMunnBTsCdnKszLjx9WX4a5KSHnXuUOwsMdJnPw4ymH41EDx
         uGai9xmIqZSI+XoWsv5oT8HN7Vx6KUqL/oUd/pfA1kecXjgGEaUyO6Fox2kgVNXm9BlX
         92Jb0u/qcndzxt6EV6bY56L06rg2893GRyXDMY02xXXBKEB1H2RxyDoUfw+URD5+PhR3
         0++Evwam1/ux3C4RPVey6ldkvmtSdbA3zVorDdQ3OIIikYQok4va7CA2mkBU/yforeef
         cVQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Y9JnrVG5VTaCAWBD1nUyOaUPc7DsSW5fh5yzs9Hw95QdMxNNc
	JPHd6RDM4n8ERQVOkixNiyE=
X-Google-Smtp-Source: ABdhPJzB/lI789NKMflodpJvHRFfGJZYQaY+n9In/Xf715W9B3/kksl2k2uTcCcq6RGtQEyZQg+Z6Q==
X-Received: by 2002:aa7:98ce:0:b029:152:5ebd:428 with SMTP id e14-20020aa798ce0000b02901525ebd0428mr14984758pfm.4.1602310296665;
        Fri, 09 Oct 2020 23:11:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b596:: with SMTP id a22ls5257186pls.7.gmail; Fri, 09
 Oct 2020 23:11:36 -0700 (PDT)
X-Received: by 2002:a17:90a:2e01:: with SMTP id q1mr7644189pjd.213.1602310296056;
        Fri, 09 Oct 2020 23:11:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602310296; cv=none;
        d=google.com; s=arc-20160816;
        b=ZENJeceSbsaRUgLcTqEF0CUZllLIQmvlThZigTKSi0yndtwCaHGL5ejLnJbjs8yYcB
         KesdKHaYEUi9AFwZ+rWl2WJvFm1groTQ+JMjgssdElsorfS1GwntNUJ2wCqc5b/NRdxX
         M3ut5tDrmkYagoMFBOMPkOvdMlQc1zW/4FddqsrZC+PGyAJpHcTR7klXN8+8qYC1pl72
         RWrYycjyJ3RN2ceTFb7j6tb5LqSmUAbt12QdCAYnL22Z69kX9DhNKlTwhX9Dq692GsQG
         XwC6Td0CZ9x1YzgK/WbI59WcbRU7JIB9x9tVs8X9r51Yb2dhVomNpAzAgl3tX0Y+gGo3
         /21A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=IyGrTsuf+XbfRsOlZleQ8COsqo+RgEPBV6+boXBhvfA=;
        b=A25zKzKcUaJ+IAXpUWcJaH2hSheGSfnB0c6bw5PEb80xsKKV78tOq7IqkVw9s8ywry
         mBY7s1rOkeEtoRypIS3Qi00XpcNdvUAQkDjK+xvwrFBpU2oaEGNSjZwiegNzRFYjznKM
         oi6w9beRRilOA2EgiWeNm6zQsYOvVFwAMV2Rxi0nA2fih7JvG2xGi+CxU9tXl+F2M+jH
         CgrN6sUMD6BEqJQdh7rJX2uS72d/2VsytOuqjCOtrNZIQ55uwJcfSw6u7FEhNbVwCPrw
         A1+2IawDVur/zbFaCmX2RKtK6ktL9KlJ834FTNOrkflsFTjH1K1n8lcVP7laLB+cE9kh
         RgfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Q+xNFPJi;
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q2si913838pfc.0.2020.10.09.23.11.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 23:11:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-107-pc0cwYiJO-e5uiA-NDu72g-1; Sat, 10 Oct 2020 02:11:30 -0400
X-MC-Unique: pc0cwYiJO-e5uiA-NDu72g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DEFF186DD23;
	Sat, 10 Oct 2020 06:11:28 +0000 (UTC)
Received: from localhost (ovpn-12-89.pek2.redhat.com [10.72.12.89])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19F4D10013C1;
	Sat, 10 Oct 2020 06:11:26 +0000 (UTC)
Date: Sat, 10 Oct 2020 14:11:24 +0800
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
Message-ID: <20201010061124.GE25604@MiWiFi-R3L-srv>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Q+xNFPJi;
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

On 10/09/20 at 01:15pm, Rahul Gopakumar wrote:
> As part of VMware's performance regression testing for Linux Kernel
> upstream releases,=C2=A0we identified boot time increase when comparing
> Linux 5.8 kernel against Linux 5.7 kernel.=C2=A0Increase in boot time is
> noticeable on VM with a **large amount of memory**.
> =C2=A0
> In our test cases, it's noticeable with memory 1TB and more, whereas
> there was no major=C2=A0difference noticed in testcases with <1TB.
> =C2=A0
> On bisecting between 5.7 and 5.8, we found the following commit from=C2=
=A0
> =E2=80=9CBaoquan He=E2=80=9D to be=C2=A0the cause of boot time increase i=
n big VM test cases.
> =C2=A0
> -------------------------------------
> =C2=A0
> commit 73a6e474cb376921a311786652782155eac2fdf0
> Author: Baoquan He <bhe@redhat.com>
> Date: Wed Jun 3 15:57:55 2020 -0700
> =C2=A0
> mm: memmap_init: iterate over memblock regions rather that check each PFN
> =C2=A0
> When called during boot the memmap_init_zone() function checks if each PF=
N
> is valid and actually belongs to the node being initialized using
> early_pfn_valid() and early_pfn_in_nid().
> =C2=A0
> Each such check may cost up to O(log(n)) where n is the number of memory
> banks, so for large amount of memory overall time spent in early_pfn*()
> becomes substantial.
> =C2=A0
> -------------------------------------
> =C2=A0
> For boot time test, we used RHEL 8.1 as the guest OS.
> VM config is 84 vcpu and 1TB vRAM.
> =C2=A0
> Here are the actual performance numbers.
> =C2=A0
> 5.7 GA - 18.17 secs
> Baoquan's commit - 21.6 secs (-16% increase in time)
> =C2=A0
> From dmesg logs, we can see significant time delay around memmap.
> =C2=A0
> Refer below logs.
> =C2=A0
> Good commit
> =C2=A0
> [0.033176] Normal zone: 1445888 pages used for memmap
> [0.033176] Normal zone: 89391104 pages, LIFO batch:63
> [0.035851] ACPI: PM-Timer IO Port: 0x448
> =C2=A0
> Problem commit
> =C2=A0
> [0.026874] Normal zone: 1445888 pages used for memmap
> [0.026875] Normal zone: 89391104 pages, LIFO batch:63
> [2.028450] ACPI: PM-Timer IO Port: 0x448

Could you add memblock=3Ddebug to kernel cmdline and paste the boot logs of
system w and w/o the commit?

> =C2=A0
> We did some analysis, and it looks like with the problem commit it's
> not deferring the memory initialization to a later stage and it's=20
> initializing the huge chunk of memory in serial - during the boot-up
> time. =C2=A0Whereas with the good commit, it was able to defer the
> initialization of the memory when it could be done in parallel.
>=20
>=20
> Rahul Gopakumar
> Performance=C2=A0Engineering
> VMware, Inc.
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201010061124.GE25604%40MiWiFi-R3L-srv.
