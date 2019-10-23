Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB7VNYDWQKGQEO7HQHZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A16F4E1503
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 11:01:52 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id x8sf6642792ion.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:01:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571821311; cv=pass;
        d=google.com; s=arc-20160816;
        b=bcxtEgcaCizkI/AsP74agykO4XWdZUtmPIf1IgxUGcyukQ5ZL1aABtf3R/LClAnJ/C
         Koai4Juzpoqp2BNc2/gDApvNrGplBKocWS3Kcnnj8mqmVKO6xk7LXjrkvVD9n5Ju3yz3
         qbgOek+fpPZFY0TvJmoSXfhylxreBtdvqzZatmKQT9xUZKP/FSuj3DxIBw6Jmm5qD2Bj
         pd8LiWY8lGdMHOmQD/bmkDLV7jbMZJRaLTedwQOlUE1LfWinEqdRVlOgdfTrfwC0tsL8
         WAzWVjD7GHTNeuckzp0ILDhMqsdRs2iArzTb71xa1FUHDsoh1b4k102Btt8FTCuwLEY9
         fJIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:user-agent:in-reply-to:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=4EYjJ9VL989vOcwVv+JQl+PLTJGNi3mGhgtwxQuUfuA=;
        b=T7mB3e1itL4HI7fNNdGrsP7VkFxGd5DguzQfNGYscSxWFYnXU6LzrU1mMSCJSbMwBi
         TBgP2pb2PX8tYY8AsXon0y5q1wra52PpJzHpjRc8ev6NLoQqs9I1Ta4IDpsa3mroMxNG
         fjggfn5ZQVGA+/eioEbRd9q4nZhrs75vxTk880TDvY+LL98LfCMzHci9ZSVF2EVckoN4
         MLlttjKRqthWumTvSLbaHIH2S/l07EojDOUklR930N7NjqXreVRCTCaY0vOCO9/zWWZy
         BUEgUN2cPEwXpI2Oyit1z4CJ6b/gADE8AuWE26YYPbMlWuVet83A+Dnr9HrRUXvB2OzB
         USuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bCsIvhyh;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4EYjJ9VL989vOcwVv+JQl+PLTJGNi3mGhgtwxQuUfuA=;
        b=dSUe85CETq1wvjggOh5twcd+KINj4tG6aMFmD7QZkJTmvRzpdmGYt1LPwTWjl2cCLG
         yDjV/QILyEGQgQCJMVMK04XpvmWeCq9x303ctZDFOu/7OHeFb6N2L8N+BNFz0EfuvpaR
         H0jveZSB/qa2kQXqutctGN23brzDrzDZ99tFejuMR5io7rOErsV8pILz55EIwkOsoqre
         0O7+66K+0tlFkZKf9PdXUwEh/jiv5pO80mn6VIGWjeNBlZV0ppQCk8z1JnW3UhDrP9hu
         BdZSSbstFa/pwqZYsyAAAsVxpqNqJX6q5qYHAORVf1et128JQfTaf8D3smBwvxrDze39
         3jaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent
         :content-transfer-encoding:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4EYjJ9VL989vOcwVv+JQl+PLTJGNi3mGhgtwxQuUfuA=;
        b=QX1Kg9Yuahf/bRPq67IyMXLK6k/XMc1/lh1D0OquO0i2BEenlQyVnP2WWgO/EKvoy6
         IOtnPKCjkhZSzjgF1r3EjY6zAy53QmnlRwQ2EV8dln0mkESDNXNb3vQ06uSraYUcvsBe
         9R+ongz0rXp7TtKfvPtduhAy3AD1DGUhTH3PjAfhJOeaG7w9Z94Rqji5Jfrnr/EZIjTN
         GQsp5lAxPS6eW1bExlUpbeSMHDmu6/UScqnzlapo7JqTvkhfGFS3bRFlcr6x9dG8/Liu
         gP6+Q4vq8Dd7ZCPBuGgl2ZitUMpuwUgto/MzhojBey1c+FxCjAun54HP5Ta/Vcgq0NRh
         QWUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUc42p6Orb62Drax8t0Ou6YhovJZGYLX1LwqaGKx/6AuDfePabo
	rphq950sRxiJjclYMzKAXlA=
X-Google-Smtp-Source: APXvYqwhIUyOwYHs+4fGrQiLAM1W0P3ULBk3NZvJo7GinQrSFGw3iZU6XNYSPTCPC/sIqjpCNBmQWA==
X-Received: by 2002:a92:d0a:: with SMTP id 10mr4210823iln.218.1571821311061;
        Wed, 23 Oct 2019 02:01:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:998a:: with SMTP id t10ls260863ilk.9.gmail; Wed, 23 Oct
 2019 02:01:50 -0700 (PDT)
X-Received: by 2002:a92:3651:: with SMTP id d17mr37928793ilf.268.1571821310717;
        Wed, 23 Oct 2019 02:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571821310; cv=none;
        d=google.com; s=arc-20160816;
        b=MWNwM9Xw07kpewLw59kbwS4jCq/iaQXiOfBlyT+LzedW2wWCO9mUpg9dX1Altu5ima
         elUii/p2XN6NFTo2ESL3ECY3UP5mC0V0HnDEhdYapPSE9TMNyWMIZKpkYiaXF87gin1y
         xcuLs6IkefVNAW6Lik/EYs4Hakyx2BDsNQn/NpR/o0132UuI4PZZ+xVC9FFiJJ6MfPs0
         PFGaovnRZ4h9kMGX2xsKrI/Gt0tD+zxBt4R8S4pBSCw04orWRL/OwZE4+X5huO0fkIC+
         JuGiCSJiJmqwbePCZP/eIa2jzq/m0ZXjBjOp0/4eqCX3kULaLmRwqSY4MifUCD7+kFpo
         erpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=N61mf/IyTSPpFH13u3QL5saI0zqXCL7YT7+aVbI/wNI=;
        b=TAkgqHHKwRl/K1ionzBNe9xssePUqf93Nx0wdqiiHxMHlolFJhi7DdRrQgPFiKA6fF
         COAzlcPRCYxyJFYmLq7vLw4JRUWTQNZRSqdZNXOucBT0vVq1ivxIY7QCCQMFNkeW3kuj
         xN8JdyP+dKDM7Hj1IE+7lvIDKVojxDhklWH0Npc5lRqVDEaVJmmRGVcAR0dBXyM6lO5A
         iaNIgn3ExMpMCg/w5KowCa7PInaysl0Yph9hm0b6WscJeQAUYqMdv0RAsifA/CgtYzVF
         /qtZdypSmLvM2g1Lg/AQTwCzdFecEzuDUpySJDIRdRjXKV5zcXmQQmsb7ir4ekRi/cuE
         BJPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bCsIvhyh;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id 75si353615ilw.3.2019.10.23.02.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 02:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-NB-BrnHlPs6FLyJ_rB9LBw-1; Wed, 23 Oct 2019 05:01:38 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2827F1005509;
	Wed, 23 Oct 2019 09:01:36 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0D8185DC1E;
	Wed, 23 Oct 2019 09:01:31 +0000 (UTC)
Date: Wed, 23 Oct 2019 11:01:31 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2 6/9] perf tools: add destructors for parse event terms
Message-ID: <20191023090131.GH22919@krava>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-7-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191023005337.196160-7-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: NB-BrnHlPs6FLyJ_rB9LBw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bCsIvhyh;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Tue, Oct 22, 2019 at 05:53:34PM -0700, Ian Rogers wrote:
> If parsing fails then destructors are ran to clean the up the stack.
> Rename the head union member to make the term and evlist use cases more
> distinct, this simplifies matching the correct destructor.

I'm getting compilation fail:

  CC       util/parse-events-bison.o
util/parse-events.y: In function =E2=80=98yydestruct=E2=80=99:
util/parse-events.y:125:45: error: =E2=80=98struct tracepoint_name=E2=80=99=
 has no member named =E2=80=98sys=E2=80=99; did you mean =E2=80=98sys1=E2=
=80=99?
  125 | %destructor { free ($$.sys); free ($$.event); } <tracepoint_name>

jirka

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191023090131.GH22919%40krava.
