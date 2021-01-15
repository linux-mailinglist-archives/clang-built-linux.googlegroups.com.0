Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBD7CQ6AAMGQENIEIGGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 086C52F85B0
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:46:25 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id w26sf16641599iox.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:46:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610739984; cv=pass;
        d=google.com; s=arc-20160816;
        b=YXOYforzywT5foKG8fzJE69XgIITi5cquPB+2f3D445ru1xmbISJutZgpBWglUtqy8
         TtL59f807gFHt2+569KLlrwGlvMtWwZ6MUAv6EkBZ8dwy1vVJw7nbZvIuwjB42jU+B4E
         63OwN6/66EP45uwk25nItbbBe+mULvSff/EoT3mvqpkJivDcCW6E9G1lxVb7e4AhQTRo
         W+PQpNO8oNxuUWr8yCBH6MQPzWlu5A8Jfp+AKPw4nH72Ob+FKnLcKlNxFTvo1DI3lYI0
         y9K05b4Mvr2W7SXTDOx0kB+wYad/vMiItoHxAOa8er7UilFsHUjcPZAuFTP9haZWb2Ci
         qTkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=oLpObLrhBWUqwrsLxY8ykPU7y9xD4ZKucJ2uY2wbYT0=;
        b=oj8PLVEkmTSQGXDSOW7sKCC/goMjmERrJ4ZfrulcthLOvSnAa+zExBCBT93yMD262j
         7UsdKn+6ZwO3ToWz4OkxBPtcaeTg8iRdKaHIKepPBquhSX/GS+xTr5hFvAweQRDH3Qz/
         EWZvv5n4DDstCF71N4V+BWOB9Yy7Yz+U1bei38talnEA1dvPBEiTBa0QA+VNR8btktRD
         BJBHrPXaTBnVDj6fG5yj4HcPf1XabOOyRe4cuwrR1vjXzlIT4wsDgELuwgZiou8pwfGx
         ESQqyTvg3u/hx4gN6AQPf+XMrD9eJQXTUMumW5IC8GuZiQzF9sdBA1Tp+arAwZaSOUld
         ZpYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BV06vZmz;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oLpObLrhBWUqwrsLxY8ykPU7y9xD4ZKucJ2uY2wbYT0=;
        b=jXN0fmjiIipCDFbKqFkj9R/JjghMwfZaMw57yyF66iAGsSZjx1/YjVn5p9x2JrBjey
         bNcVdjbS6LTtM3IVHP2iqh9l1Kmqw5DEef5pahCOIugxFeO+MUxgCpJXJbuy0K03yRoY
         lE17vj5Jk//ySRQz5EwPDqoZMn34uOUud7WQIGligQY01XifNMEjcQtZlzr6qz8EyvdZ
         CdvD+FyTJsXdVV4bz4f378DZUQ4rm5bxM1v3gOcuVNdnzVlCjx/WpKjjwWbZRQSDTyWY
         XaWEHonnsOxm+aEgph15oWdoD6b42IaFbZyXygzmM988oi71r7D0hAcJDjcF1mo5f4QJ
         B3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oLpObLrhBWUqwrsLxY8ykPU7y9xD4ZKucJ2uY2wbYT0=;
        b=j/bbfe3NYLXvIDxJHLY1rIwRH3VhJFHY4uCdRAFS2zCxyjEN+QsfqcEUoOpIrEETKo
         qVPrzq1eRpG3uW8SzS7tEyln0Gm7GXqVR1l2H3yN0iB5GgcICcdxA09tUyB7NKLJdlMJ
         GUuwEZWMKjBNsIoiis2KNjtiai5GoiJM/t4Rr1QIf0LEIDaKhYKi87Q5qsiN7BzCMNcs
         HEDJW5MEI1LJLmRXqG29xOKpJEE6TEAdfw+iAgrGumKl7To4LN1Hs8XFD8m4zafyGScj
         +bM0aX5eKX/cK7uvoiz07UYHCipyvnck00Lum9Io76BN1wUl+jH9yz3Bm6lST0PLObYY
         /jxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xe+JkNMAk2mGSP3NaqHjreVgxipMtWxMJYyJbisH0XUJHzB03
	jA9lG1YEr4plf0sL7OmiLQM=
X-Google-Smtp-Source: ABdhPJyzuVg4drJ7UNyR2dbmZ2ehfdlRNfWz6/7IZKJmz04mjMR0m/zzleXB7UJb+Kvu6NuX+MSPQw==
X-Received: by 2002:a92:c107:: with SMTP id p7mr12396661ile.118.1610739984063;
        Fri, 15 Jan 2021 11:46:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:48c9:: with SMTP id j70ls2838715ilg.6.gmail; Fri, 15 Jan
 2021 11:46:23 -0800 (PST)
X-Received: by 2002:a05:6e02:20ee:: with SMTP id q14mr11745931ilv.259.1610739983627;
        Fri, 15 Jan 2021 11:46:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610739983; cv=none;
        d=google.com; s=arc-20160816;
        b=ERkKP07I/TLMQCQYO0c86yqNA4TibC8SL9iQNnDFB/pSOdwA+HA7dvp4XiPz6jUb1E
         MmIBWhOdRoWA2CPeblIDpogpzrNPam66M1k/3pU55L6o7sJDokKN6WgP/39EMLjwtr9f
         lxmd5een6lLwP0qd7Vf14m90HozOXpIkvXVhCqwsh0w3llvmQfdl/YOgH7mIhwydMAfG
         vpAT5S7AUD+Sq+T9PEKC4bn4vB/jebO8LmT6A3qoJkyrUPuCCbSiDze+AzDt940sXUpW
         S92mnaySfDD6DWS5L6Kvcn/P49Wx8NRn0B/MCyixKPXrLjWOo7/DxnvcuEwRKfU6UiM4
         38ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=zRvyAUBPTrocJOciUmV7p8wLncB1y5eW7TQ3VleD/mU=;
        b=d6dRrID7pmgHgaxaDBEVolXetsBfsFH/BbeNZiYNAABtUMlStFDzjTvqYPsabo4Koz
         C5C/8UH7JDNsciwcZ+i29+5M6aOro1A1tjrS1PVrEo50XjdSS9GqEx81hvs7P83PwqIY
         uyNUu+pmCSbh/pUI42AIfOjbKcAdJSM5b0zR9QtTm1ueATIOLlgr0EMBYJzG3eX1tVYO
         EHQxubFUTewuz9rW1J2x0ULRP1V1czDS4nOKSlpQdKyPzMstVUiD1l1i6F5ltpUOOHZD
         vE8PPg+YVszinizNwbCkr8kinRMSeZrqYMWTuwLvqGr/GohWgrMKyZWc7KjvhLlBWVxw
         MJpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BV06vZmz;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d24si294715ioi.3.2021.01.15.11.46.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:46:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-zQbkX_wvNbynTqx47htJHA-1; Fri, 15 Jan 2021 14:46:13 -0500
X-MC-Unique: zQbkX_wvNbynTqx47htJHA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 329DF18C89C4;
	Fri, 15 Jan 2021 19:46:11 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C20806F7EF;
	Fri, 15 Jan 2021 19:46:08 +0000 (UTC)
Date: Fri, 15 Jan 2021 13:46:01 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: =?utf-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>
Subject: Re: [PATCH 14/21] x86/xen: Support objtool vmlinux.o validation in
 xen-head.S
Message-ID: <20210115194601.dkilnfkp6xnhai22@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>
 <43d47af1-6735-6651-db11-4489c86c62a2@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <43d47af1-6735-6651-db11-4489c86c62a2@suse.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BV06vZmz;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Fri, Jan 15, 2021 at 06:17:25AM +0100, J=C3=BCrgen Gro=C3=9F wrote:
> On 14.01.21 20:40, Josh Poimboeuf wrote:
> > The Xen hypercall page is filled with zeros, causing objtool to fall
> > through all the empty hypercall functions until it reaches a real
> > function, resulting in a stack state mismatch.
> >=20
> > The build-time contents of the hypercall page don't matter, since it
> > gets mapped to the hypervisor.
>=20
> This sentence is technically wrong: the contents don't matter, as the
> page will be rewritten by the hypervisor.

Thanks, updated for v2.

--=20
Josh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210115194601.dkilnfkp6xnhai22%40treble.
