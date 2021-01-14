Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBPGHQKAAMGQEFB34U6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id D31EC2F6BB5
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:04:13 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id a1sf10450476ios.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:04:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610654653; cv=pass;
        d=google.com; s=arc-20160816;
        b=IavLzFsHhtUYJCuMw5ZP70l7rxirWEa2bNFOiHz4x8HzAsJZxBBtBjTGcYhfvrYAI1
         1nogQAuYJ56oFBr2bwu0HSVTVlFjd7Zs3LDyucpbyh+8vrdgJJGWE/6p3UGLekot5YCs
         QObzY/DPPzRvK4+ATTC9DksiEv1tOMzAeoidT1DG31hNfDLcn+YHiqkiQWHl9zB/wpJ0
         QJF8rxlJkDB8BAlB8vZOjqZWCaptmyE/Vjx3K4kwFPJDhlyb8VKeGkU5N5XhFihJHOcM
         iYutj80oADCW+ADCvksCmQM4ns0lePc1quZtAB5OXzi5Hb4+ZEy0vxGLBV20MuMA+Xgk
         6d3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YwZ7s9x5lOUU6vEH6mmgRt/eiY3G52+3whwyRgH+FdI=;
        b=xKBZ6/vTfVbjxruVF9nTsq/uAf565PmTpbU/rB1ZCpYL3jiyt8PRrFlI/vlRJm7PFz
         /zgBdZUMH/B4788TJfRIc1MEVqjs6jA1F1VWOWq/Ye3vWZpIDrtA3be6rMxZC6zDvJhn
         7J2v48GCMEj4iCipJ1NIXiEdvWsDPHU1PMih6rQa3t3akcGCTjS1bCNGHyqfYTm/wUZS
         Q5JKBBp4toGUrzeowaYGrfk8mYeg/nKgN+J/QFnsoMQHeOV+0+PDZx0q2iPNwtr+W3P4
         MZ2LC0q3xsC/0k7Nj7oQUILujezCdWMGYXkg1ufvHtXjCYl7lkfQhjNcjBJiYkCQiob7
         BYKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UAKs/8EI";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YwZ7s9x5lOUU6vEH6mmgRt/eiY3G52+3whwyRgH+FdI=;
        b=Ae0+FdQVnYFuC69zwWzJmWHnRX9T1LyzWQOsG+IQp3xLydwgzk20nzaChpYJbUcN57
         D2NKh8b3VyhxKY2EZCywqGA7kz4DTZVhDdf5dpaAzomLNa4jvFFrH0OTDjhMCv9GDitN
         o+/of7xc4kWot3r4nHbvLjDjnqI2jlG+Cy9JJNVuD3ZbWe9Gv4TfbNfeQM621oU5LGDt
         r1vjQ5ho9zf+NDsNg47Buml1jPmUX9KmsxFf75bJOrX2dP0t/bx2lKzKEHdFrtGc3H8V
         zBbLJssF6EtP6CihTmdZIPof+g2r5T3LrzBfJMqD9/QajwCwhze/CE5tQ+JKxVHrqV9H
         0OIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YwZ7s9x5lOUU6vEH6mmgRt/eiY3G52+3whwyRgH+FdI=;
        b=Fmqs2vgW1ysCRc/6ig6+yuMYrkCq6HpNyaRr4BbSKSAVathgJM2K0IBLA5NPqNiEt7
         rvVhyAvVH7ySC8/aD5DhKE5XNgg3C3+IkC6lLPwBI6XcbJ5i6aA1k2Vfuv2bcccEV50K
         jP+33U6wl3bZu9zAEDvHGN+jMClGvnC/kS0MOJxOQHG3FpL1dpd5HJO9n9KTocpN/QHT
         vUSb/qNLvx9MdkoXpbxLPY8ugfRDwY+N/NGglMAXlsvFCalhujuQDWhigY04nP+T1sFG
         uf0znfSZTLvAVsB/RAtAp9nIqpLql4UTJxI5FasIc1omh+4NQw2IAyYKJKQlYF+/il+l
         skkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rszO+obsPCFcJ6orMcEObCfAnlo2mUJIoUKQqdRFmj1WenPu/
	WOIn0VhbTGBe8KA/jt2b7kA=
X-Google-Smtp-Source: ABdhPJzVi5sbnoMkhw3ssKmhF4tN9XT7TBvQnHHeP8YOQ2QMetimfdVmWbNACQKP9GAcJ5LfBDLRYg==
X-Received: by 2002:a92:444e:: with SMTP id a14mr8161359ilm.129.1610654652928;
        Thu, 14 Jan 2021 12:04:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b8b:: with SMTP id f11ls1744958ill.0.gmail; Thu, 14 Jan
 2021 12:04:12 -0800 (PST)
X-Received: by 2002:a92:8b07:: with SMTP id i7mr7978113ild.127.1610654652449;
        Thu, 14 Jan 2021 12:04:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610654652; cv=none;
        d=google.com; s=arc-20160816;
        b=xwgQguGGVsOMc1QjepZAx9PxFLpoLhih2MylmhAeqW+iSZs51fuhEofCQreWChvjMr
         RBP3Hvtf5/woj37VORsJyVYjOiF2sJIJrRQdh0TE52BplCCR/AS9Qg32qElxeo2+Pahe
         qzMLY8jDKh3/3NCi1co5cc2HvbogT9I7av6xOUKoojaVGW37ALucBP0Y9Nc/oay7i7gD
         LvAtf9OvwflybZVxH/IhRVVAqAyvCDsQG+g40KvkRNz4H1Nss59oq56nId5JnUP3BzHx
         Tebdrd76TROU9Qx2emUsxAg3jJ0X82lPo4PjlpOxyYVDxa592MhDwHYcAwmGA2KRdVKL
         BBdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TDR14ZiQqTrxv/DbP+NPRDh8rnGuiz+pSmsIiv38XS0=;
        b=L5u5fAmGfSv07j7KbudFrFdOEf0oQL03z26sQDnV+tLT+OE0ZQVWQVkesyh9OP4B9K
         OUGMDqpjWiRcEDFDh6XQUfR63ESPlVMtnnNs33DAfXoxTv3vJd/lA0F/rwI7GO4TEjfi
         fac3FVcHDSTu+t4X64A8p1/gl/V2Vy/kQTWqzCZMyoocebJi0K6oFLU8xMoZjN0l2Xu5
         ShloMcKjOHJi+E3TM9gkXIhN1z1PUc+lv4vzecvPZeQfhCRj+z+Z58PShzBsuV/h7iYH
         dm/1bRZsysSVGXmePmMpCsjyUAbKSOqixNUeIvUcXHeKUKlmgTKq/glySjVP6Z7sbIeA
         eFuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UAKs/8EI";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b8si833220ile.1.2021.01.14.12.04.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:04:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-LHANGFXOOSWbxozGdAEloA-1; Thu, 14 Jan 2021 15:04:10 -0500
X-MC-Unique: LHANGFXOOSWbxozGdAEloA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53BAC107ACFB;
	Thu, 14 Jan 2021 20:04:08 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F7785D9EF;
	Thu, 14 Jan 2021 20:04:06 +0000 (UTC)
Date: Thu, 14 Jan 2021 14:04:01 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 01/21] objtool: Fix seg fault in BT_FUNC() with fake jump
Message-ID: <20210114200401.bzxtvmpxrhr4ioy4@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <c6bd154e55739c332c21ca4a91a66787cc3e104c.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c6bd154e55739c332c21ca4a91a66787cc3e104c.1610652862.git.jpoimboe@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="UAKs/8EI";
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

On Thu, Jan 14, 2021 at 01:39:57PM -0600, Josh Poimboeuf wrote:
> Objtool appends a temporary fake jump at the end of alternative
> replacement instructions.  If the replacement code is empty -- resulting
> in patched nops -- the fake jump doesn't have a section.  When running
> objtool with '--backtrace', the fake jump's missing section can cause
> BT_FUNC() to trigger a seg fault when the NULL insn->sec is passed to
> offstr().
> 
> Fix it by ensuring fake jumps always have a section.
> 
> Fixes: 7697eee3ddd7 ("objtool: Add --backtrace support")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>

This patch will probably end up getting dropped because fake jumps are
going away \o/

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114200401.bzxtvmpxrhr4ioy4%40treble.
