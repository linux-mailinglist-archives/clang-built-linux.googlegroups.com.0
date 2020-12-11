Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBZ6AZ37AKGQEOB3OFSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 536672D7B10
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 17:38:00 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id a68sf7039234qke.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 08:38:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607704679; cv=pass;
        d=google.com; s=arc-20160816;
        b=jlhEw07t1k7P6I/p2RAjGuBEQ5tTvlNnlErbv/eQrbJLfp2HEVA5tKxNpgl2CroUYF
         /NzrmUidcXHDBAnVwi6JXe9i8dCVQerWwW/naC77gZBg4fEl0ayVYXxxcC4SP4ByBUyh
         keWDBeCsRsGIcUEVxRwoIC537naydYvfSkEiHrK/YRHaCOXyx5eKfyLMUDSKualHWCaC
         qtOsKYpDRuqmeP0BU791u/HpRICbTN834ltaFY15agHG52Mfos8YqVnykJYMf2VCK0uq
         0RmECAfaQiCSCx54MkVXOzu/ic8L1v2vGxz8xa4EpWWYheNqaQcQ3Quw83avFDsuVmIy
         NB5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GV4w0tKESTDjVaX3w2fdKQaaDvHfl9BlAo/rJuDP6nY=;
        b=W0SgSqwrsRtS7VMXY+qPxjzSAJsNnJUQHbX7Sgw/fbvJHyL30YtgdxhRCvVyGfZ8/1
         YbrbdhGrOGTktuktVFrfla/2tev25kjMQI201aPNGUuMogW1dOpX4pxqg4mJfj9Quefj
         3YqrLORAIdis9otc1i7Go5KQ5qyKQ6jpHyFgEMLX61qGDkWJXKCZVwhyLyJvg1uw6oyb
         H3ADv8yQLa+fEggcFo3k6IEuC/HxTuDL+3yAltBr7nejVZM4vk5LrlL4aUGd6KnlMd9C
         2e0YSoP1bq/sWoZmel/RlHBmhlFkEEHF76JogbmokUGTbdOKQ82XFc6pGeEKi+S6Deiv
         u+KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iWcw5WlO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GV4w0tKESTDjVaX3w2fdKQaaDvHfl9BlAo/rJuDP6nY=;
        b=XLlb2J5R++/1RbTuBsQUolF392sy5vlVUo6Bi7syprD4T0jpVigCqaAAFKxo1oDSbj
         BCmorCUjPjxtEt954Vv8G7MOwjaqbdD8wpNwVkDJdQPKJa8olLUszK7HenwohtiTJHU8
         ysDhTH1FOZyyM2nTJ4YtbIZ0kw9FRQ9GG3gUQzhSxTloX6l8Lh9lLoj66IaqNaIG1Peu
         qvGFlg6zdsmb6mwPGF/vxDwtd5HNrQuImzemQ2MMtYKgcKsHmPlHn4UWIOafbIKEYOoJ
         uDkYk19YTvnwA9nd50hHZ8P8Q1ed6V5kRZNs9Lq2DbK7JnQkyCYh6giWHLnS13vv1abM
         qDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GV4w0tKESTDjVaX3w2fdKQaaDvHfl9BlAo/rJuDP6nY=;
        b=N15zReoSYzJZK0djgaXb83Lu3ra1mbHO8LD8aurHvsU+gT4Tv3hIpLQYwwm4AZ3ohW
         DXmoyLcxDiWRrpxtdetg0mt2CuH8UOW3YR78LiMgD9jYNsjHYz/pLlP6yZc8uzENbsKu
         VjLcHK8ZqFVk7hRcejeYDjHJVJVixyCTmiDeSwJ6oSiJh3oC4t1e2+3G5wo6Y9JY9lbb
         ZD4l5qy1XfPp705682vHl8/SL9wHUBAQFXlQ5A+xT0Bd2d8hbZIr7PAFcDMuoNoHOe9v
         /CPRR52Kw/L2wHu8jOOeamMZnQnYzlMnIbM9unPoVejq2o9PLioAnZ290xU85CZFaZwb
         GMag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dgUUJXBvGE1dN7Crry7quDlRe6J0+ZsrxECW2TCrGpr73XmsM
	E3dj6wUiabv9Kq1+K/lQOiY=
X-Google-Smtp-Source: ABdhPJwgmwGRJTTttAPzjc9N8O6TvgLG9F0J+jhDLBZcplUPPs9QQnroWL6YZ1oZu0JMOn66BKODfA==
X-Received: by 2002:a05:6214:1110:: with SMTP id e16mr16365716qvs.57.1607704679394;
        Fri, 11 Dec 2020 08:37:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:20ea:: with SMTP id 10ls2102771qvk.2.gmail; Fri, 11
 Dec 2020 08:37:59 -0800 (PST)
X-Received: by 2002:a05:6214:1230:: with SMTP id p16mr16381771qvv.47.1607704678942;
        Fri, 11 Dec 2020 08:37:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607704678; cv=none;
        d=google.com; s=arc-20160816;
        b=iNXqVzdccL/Ore/IeAQmDFGA6glwC1h6XSWFF4rDyVDEUH5fVClC64Y8QS0RCcMSlC
         81z6nqYiNvcecAi6zNATXQGwJiXgSoJZqrdidN2IVkN78RnXB18Xi/ZyWi20uROHIMGK
         paDY48AH7io17F3S9RArRpE0MVhyEED6Qmnu7NIp+G5PDiPP0WshAsluhdhSlbe5TgYL
         u5FY5nfobAogBjlOfMTpBRHBCl9d603r5Ur+BYQQIRwdU7MCCSkkw9ofqVje7C8+hVBp
         TAxiEVOzG4aKZr4Veg0hUJQkcbGllkRHqlTX0NUWPUrmA/jStiaRpt7bcu0zRPskpWEP
         HboQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PtVyYY9nnquN+aBfs+/yQ1OYbTNln1k2UMH3Bn2/FdM=;
        b=zIm+DJWIsShzBAhO52N9URt/3xGut5c+x0pGv62oYnewvXRnnYfG+vsVaUrBRXmwVO
         zk2haUI1uMbwVXjFkaNtlkzqXLYKr1yUPZRWZRcfvauXm+x7eW6TgI2SpOeyiSMn/OZy
         H8Z5kNqdpHf0BwiMvDiaI4648k065cRSbg3m9YwwdxRvGSfRULnXc23NgIO8ioT34JbX
         6R+Ox0PBP4xXDTdgqv+DtxfSdyVzT0MWc9g6sr2PXEAJ8LsdjTdBIQSSioRHbRmSTV2d
         iJl6tGkIguEkMO9qhodJrvSl2Fc7I+Y7UNzomsy5r+nSwBhWpsY5VRpXLldtvFMkBhGE
         PZBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iWcw5WlO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f21si641970qtx.5.2020.12.11.08.37.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:37:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-9Eb3NqLeNCy0Dhg_xbUbBw-1; Fri, 11 Dec 2020 11:37:54 -0500
X-MC-Unique: 9Eb3NqLeNCy0Dhg_xbUbBw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F490801817;
	Fri, 11 Dec 2020 16:37:53 +0000 (UTC)
Received: from treble (ovpn-115-21.rdu2.redhat.com [10.10.115.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7FD25D72E;
	Fri, 11 Dec 2020 16:37:50 +0000 (UTC)
Date: Fri, 11 Dec 2020 10:37:48 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool crashes with some clang produced .o files
Message-ID: <20201211163748.b37gashl6an6misu@treble>
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
 <20201211093205.GU2414@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211093205.GU2414@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=iWcw5WlO;
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

On Fri, Dec 11, 2020 at 10:32:05AM +0100, Peter Zijlstra wrote:
> Looking at elf.c, it seems we're missing an STT_SECTION symbol for
> .text.
> 
> And indeed, when I add -fno-asynchronous-unwind-tables to clang-11, that
> goes missing from the readelf .symtab listing. Help ?!

I had a similar problem with ORC relocations:

  e81e07244325 ("objtool: Support Clang non-section symbols in ORC generation")

If Clang strips the section symbol then we have to find the function
symbol instead.

Does this fix it?

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index c6ab44543c92..9bc18864154f 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -472,8 +472,25 @@ static int create_static_call_sections(struct objtool_file *file)
 			return -1;
 		}
 		memset(reloc, 0, sizeof(*reloc));
-		reloc->sym = insn->sec->sym;
-		reloc->addend = insn->offset;
+
+		if (insn->sec->sym) {
+			reloc->sym = insn->sec->sym;
+			reloc->addend = insn->offset;
+		} else {
+			reloc->sym = find_symbol_containing(insn->sec, insn->offset);
+			if (!reloc->sym) {
+				WARN_FUNC("can't create static call: missing containing symbol",
+					  insn->sec, insn->offset);
+				return -1;
+			}
+
+			reloc->addend = insn->offset - reloc->sym->offset;
+		}
+
 		reloc->type = R_X86_64_PC32;
 		reloc->offset = idx * sizeof(struct static_call_site);
 		reloc->sec = reloc_sec;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211163748.b37gashl6an6misu%40treble.
