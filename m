Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBW44UGAAMGQE4B3IYII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7042FD435
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 16:38:05 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id u1sf18867674ooi.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 07:38:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611157084; cv=pass;
        d=google.com; s=arc-20160816;
        b=zH2M83jOukS1MjRuOsb6YvN6UpV0GWUnQFwNgCL+OEW6/HyzgkeIEq984Pn1lqXHkx
         TlB1/ifclEp7F+Om14aw/tgfRq0tlglXyQffa3uSo49SX7MkfXq0WG7JWYvN4oySMcw+
         UbzSOHwk/n2PdfuDVK3nn9Kaw+bDrzGq28vDlzJFdyjOLBdF95NbQ18jX30wPfCDqIct
         LUbAPbvfIGyHyfsM7FDgYz4XrXvNSZoewxxCpBJFjfFwnEEgOX89Yn8oqzgYnnjoR9DO
         bNLm5M6JJ/OVjhFuc8eq5XOM8a/Bj72yjTbQVAa1AiwRt0g+QT4MGh+ai8+xLRemEhXF
         B/Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3F0YisvGZal2qkDvBBHAYNe5/ODi/3/o5ssEPzkqtzc=;
        b=IqsrSPRvPO3bPo0zEC7pjT8jCCMSZvq0dbC4ezUzs69c0MtChGsSLMkDajNQzJ6Xtn
         caib1QS7XYqvsM9Hqmg+//N640uEoBoVnoMECtTI+ridn6CoLt/y/ImplpgLzUmWexhc
         fTvmwJozCgSQmT9I8nvQTrdvWHwgBmp2VQLmOlkChK+fgO7TM+4Kip3inOAt+iRaL3Fa
         lpKzSjc05MjG/o1t9f/ks80jH2CxGrYc0tPVex6/cOBdDXQa+qIduAxAfrQX01u+F5Fb
         XL4TP58ItJ/6DvhDqKHpIzLa+YMqwUaGIDO6B5WdCwbIxRJsx41k0yNgRWhgmPytsG+p
         l0qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YgM67KHK;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3F0YisvGZal2qkDvBBHAYNe5/ODi/3/o5ssEPzkqtzc=;
        b=PdotQZOKA6n6XMzyIDXvQguUw0RlmP8zmjnFksfbLU1oAqHT6tBLRCnXyf6KnYHQJf
         M9beV39eShnibGPT1eAcuNl8wSDastvOcIvqrSfO7AMkC0/FJtgvYaflqyE7iw0P/lhC
         V5lR9U4v+BG1Es44JhIn39fqL434zYc9DqyBHxDZ4pbSYNNoPKFrd3N13ZQUHhdv6B7+
         R4NEOUfWQNRJSq2jGIHc4++ZtVtyecWr/jpkI9DjTzscLqajwqpFcV+/R8VlVpbhHLm8
         YiTGx2kXEdghI7pYMyzheUAKiiJknnolrUYb3UoYhUpWQfVCxjU9j6xxxrW5RKuiQngV
         CGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3F0YisvGZal2qkDvBBHAYNe5/ODi/3/o5ssEPzkqtzc=;
        b=AWjhvBvvUMzxR/uDNUIjovexLAK1olTkyATK7fAbLNyUFMf40WHXVgEE36p+ysU6T2
         jsRjPNxT7KfE6thvm+FpuWrE1k46A2UV2rcc6gpdEmJCeYK3nCjNYZUPJ4F/RSBnDob+
         cvRXvJFeVGO/XJ3eeiMCL1xeYuMXK4vAiXvShOrqfrIbSwbPqBOQ53iYlnUMUfH7HL+e
         DNuiILhMbEMaMnwRnk7qs/8d4g36hD2SSodMWB8JwtOR3pYTgUQQnF7w8328z4vlU9Us
         RppbDxc81NO6b0YLKVzQLQnsjUXDzNTNOnl2RZPkPGR4m139sro1yogI+Hhd5cx+HVhB
         nCLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TGblVnWpkZrGT8cNEKO9oNHXn4G30e92GsHEqjJ0K3h8oNgcI
	1NxAabKaVdgFBNrHkThdqEo=
X-Google-Smtp-Source: ABdhPJxuRvgQk/NitYmmme69WsIHwa+ZMF2/vndq6tgGO5oezjNG9lHveP3vpmH/EBAudAC1hlQMVQ==
X-Received: by 2002:aca:fc8d:: with SMTP id a135mr3357156oii.87.1611157083988;
        Wed, 20 Jan 2021 07:38:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls6482527oie.2.gmail; Wed, 20 Jan
 2021 07:38:03 -0800 (PST)
X-Received: by 2002:a54:478a:: with SMTP id o10mr1811737oic.100.1611157083278;
        Wed, 20 Jan 2021 07:38:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611157083; cv=none;
        d=google.com; s=arc-20160816;
        b=lpz/w1pmUN+taJEtNfdTSkNHa8C2l1hJ9jJkj8ly9CWMJg4i+aEVjXDuplCAGCwjne
         8o15Kgya6/yflr+i9lWKAoGzIn6pU3b76tIOafCJkQ5O3fHMB8NovwZGwsnHPhhT6VtC
         Fe15eXAcsy7eL0ktV4DliGH8h+3ah8K6t4WiT+BAWynJI5dFJZzhl6akMSEuQADs8SyQ
         4A+SFrZzPBAG8M7yJMcs5rzSuWrDPTbJkKLk7lE9AXplfXaD1W+QfMkvHBuu7dlcBl5p
         QSVqFfolaQU5FqkG5VklW3OaMboRaTR548oWfxqsamrwV3/m5tY0XJMBcfXd5IG4ZotQ
         8ADg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sAf/IKjD+uQ3TzyPB7IjR4gmm5po354tuJ2+n8OM1GU=;
        b=Cl9zpSNE6dV9NtFfMHXoJondONVwvm73cPTsrCdlyHkYIZmdFqfa75ROJFTyRfYDMM
         xFYJ/9Fdpp2myYaMrzzNhFatKQKH7MnmwR+hCa9IaXWSyo3JejlspalGHnZ7L3sQRozk
         pVvCtXIV1ZerEsdghyuG/2mAiDttHfgvHJ6xAbM82wJyljDk9GT47aMYuOCQNhxxyPoY
         7N+u7L2ECeF2eX8WhXlKjIPSRDRHI9XZyBsh5q98QFmjqtZPTiYam6xfoehId51ZlN4w
         Au3CUPdNJQ7e/JIjx9z6dS0v6KuYrJWZ9eFUhmNLQAUTccUWEwVLbP71k5pscoXYQaMs
         TfGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YgM67KHK;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id m12si234293oim.2.2021.01.20.07.38.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 07:38:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-523-WtJ4SS4xPYOkIyaBDJOF-Q-1; Wed, 20 Jan 2021 10:37:48 -0500
X-MC-Unique: WtJ4SS4xPYOkIyaBDJOF-Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F3EFD10051A8;
	Wed, 20 Jan 2021 15:37:46 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9493A5D6AD;
	Wed, 20 Jan 2021 15:37:45 +0000 (UTC)
Date: Wed, 20 Jan 2021 09:37:43 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210120153743.rthwvk56cpnauoh4@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
 <20210118172255.hirr6qpquxgq2vr6@treble>
 <CAKwvOd=tRwOvLdQXDRYo00P3vLAnwnb1SXtaHPVkXTnfjMst+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="skw3xn73qkitn3nd"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=tRwOvLdQXDRYo00P3vLAnwnb1SXtaHPVkXTnfjMst+g@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YgM67KHK;
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


--skw3xn73qkitn3nd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Jan 19, 2021 at 01:29:16PM -0800, Nick Desaulniers wrote:
> On Mon, Jan 18, 2021 at 9:23 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Thu, Jan 14, 2021 at 04:41:28PM -0800, Sami Tolvanen wrote:
> > > I can confirm that all the warnings I previously saw are now fixed,
> > > but I'm seeing a few new ones:
> > >
> > > vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack state mismatch: cfa1=7+192 cfa2=7+176
> > > vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7: stack state mismatch: cfa1=7+160 cfa2=7+176
> >
> > These seem legit stack state mismatches (compiler bug).  Two code
> > blocks, with different stack sizes, transfer control to the same
> > noreturn block (violating DWARF/ORC expectation that each instruction
> > has a deterministic stack layout).  In both cases the noreturn block has
> > a call to __reiserfs_panic().
> >
> > https://paste.centos.org/view/081cbfc1
> > https://paste.centos.org/view/265968a6
> >
> 
> Sorry, I think all of the pastes linked here expired before I had a
> chance to grab them.

Attached, balance_leaf_when_delete.txt and internal_move_pointers_items.txt.

> > > vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to do_strncpy_from_user() with UACCESS enabled
> > > vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to do_strnlen_user() with UACCESS enabled
> >
> > It's odd that Clang wouldn't inline these static single-called
> > functions.  I could '__always_inline' them, but is this expected
> > behavior?
> >
> > > vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call to __ubsan_handle_negate_overflow() with UACCESS enabled
> >
> > PeterZ, have you seen this one?
> >
> > https://paste.centos.org/view/b4723113

Attached, i915_gem_execbuffer2_ioctl.txt.

> >
> > > vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected end of section
> >
> > Another weird compiler issue.  It generates obviously dead code which
> > jumps off the end of the function:
> >
> >   f7:   b0 01                   mov    $0x1,%al
> >   f9:   84 c0                   test   %al,%al
> >   fb:   0f 84 79 05 00 00       je     67a <snd_trident_free_voice+0x67a>
> >
> > https://paste.centos.org/view/a1887ae3

Attached, snd_trident_free_voice.txt.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120153743.rthwvk56cpnauoh4%40treble.

--skw3xn73qkitn3nd
Content-Type: application/x-xz
Content-Disposition: attachment; filename="warnings.tar.xz"
Content-Transfer-Encoding: base64

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

--skw3xn73qkitn3nd--

