Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBBEIS6AAMGQEGWV42RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 222682FA766
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 18:23:18 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id h4sf8777760oie.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 09:23:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610990596; cv=pass;
        d=google.com; s=arc-20160816;
        b=YHgZMVqaURd4RnsSoVfwOCBXw9SfLK5ZnVFNDCoFKFwocP7LaJDsuH6x6UT8LGkmSK
         6fjSsYjVUWVoeTTjCzEO+piU0g0QmH49L5GGmId4kZTP6/O2tj3o9+aOiBYyvKFN8UQs
         6yrzE8d35CZUrZI4jz/ZEXeflXtEf97QEDmjxHCvJF+AtaImMYNOhrVBYwQGDSveq8M4
         w3iMnW0Y5hqp3bMa4NTOChCbpqs9TFzhfukW3dGwEE3qZSBCMM7ZrnEsyrpUvmIcRyEn
         zmNfGKOEhkcwJJRfw2JyH0vuQIMXFKspG57Fh1HxwQzbXifN7Ggb17ABahMa4i1o08y7
         w8Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RDwtcc0OpaBbIr1fcWNCdKAlF8vfZFeWc94aRSXs/qw=;
        b=VMsA/FcjjdjrEclUwyUzPrFs3tDHqfBUPuiElWO5IOhRGKcLlkFVXekygeHEtiui4u
         y2Lt7oa4OqbM7wvnIhyRVNN25f63o9mtoJ5tx5e9t/T/j+xU3SEbW1FNX+a4X3HWcxXT
         7IK4NkkqJE5F/O92cQ73Hj30ZuKTX0ETGTpzgbzk5kYjGPrcpz4ZwYEN7pYPGmY3zhv3
         i6EXCjfwNVdJxAd+jDbZOxeLTgGJfYYYqrM1m8d8uMi0Bmsnmk/fL23jFXr0Vr4aG3lJ
         0ucOwPcPkFRZSOXUS+NPyYiG/q2wZ1vjFfvOEj3K+Vg9d0787lpJpnQOjBnwVkY8qj/I
         VkoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XmtEpm0v;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RDwtcc0OpaBbIr1fcWNCdKAlF8vfZFeWc94aRSXs/qw=;
        b=ZjowZYZlv+j5ZJ8Ao1ZZ1sCg4Wx2BGey2SiTmlY4BoAuuvrOXyJGWltZUiCCUqv55S
         jLRInPl6RboKNCZ1YWKtatdTKdLos4pUatVNeaYAOyQEC6NLohPgU0iF6qi1gMH1OCqo
         zU8WBEwCv+dO1UUd0sVZLpfFAhpOTwOwn6envMPDpGgDQjX/3G+d2twTv5x2eZR3j/6V
         x3vfkwfXTb15+oT37Vtks4wLi64hzsOujAAwMcdpv8ibo+R7G/Jv+gdgwfVJ5PJ1U6Xs
         fI5WxPHdutPhGMf9WsnG2kGJ7c6RFVQQnhb05X6rS+VHMa79VHQqHwCYASY948H/jZyM
         PDPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RDwtcc0OpaBbIr1fcWNCdKAlF8vfZFeWc94aRSXs/qw=;
        b=EwguiYCLTkJDGr302adbNZ8ssI9ZFu65kgKXZmDMHlRoWcDJKWb2EgWHcS4wVSR0G+
         z9iEeJajMkFfD5M7I66YcwpuWCCeh2G+LJ1weTDdDN1ZQp2oJI4cmNTM0a7hgaf6DIgI
         bF/lxXL7GxWs+hDaniRO8X0zdBLUBhPo3wBxmVhKJJxSoWh78pXJC1nn7WYrFvJT6bmB
         +AQIY1soU6F2irH3Thv8QiLttSaTDTKn0r5NUz2RyvvzRfZvu4IKXyjdO5tYXb8H6/T1
         Qpo3Y9S0GZVTDFyvrtNnos0/97ssXjVznDmErczVlfWwXH5e5kfz1aoJIJwXTqy5vKQs
         oiOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RbJpms91q5jhy5+dt5ojcIR/zwwudHNtEGOrDRtXUAcw17bpL
	z/QqJuFxxQcjGHP24zp8dY8=
X-Google-Smtp-Source: ABdhPJyJqYIBYIcFizgOspQIHCTlW+khz+0bO79gw1MFW7v3Zhba2HEt7p4JBkafFiYJVYCeyntYQg==
X-Received: by 2002:a9d:8f6:: with SMTP id 109mr419398otf.199.1610990596639;
        Mon, 18 Jan 2021 09:23:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6d15:: with SMTP id o21ls4812526otp.2.gmail; Mon, 18 Jan
 2021 09:23:16 -0800 (PST)
X-Received: by 2002:a05:6830:1e50:: with SMTP id e16mr413603otj.149.1610990596207;
        Mon, 18 Jan 2021 09:23:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610990596; cv=none;
        d=google.com; s=arc-20160816;
        b=Ef5fitG5YQ7ukGkqLOx9+Tt4hfYPRHjeIy62mR6ugYmx8STCyN0J/K2/cmZXgUrXpw
         H0q89oU/btleoI8i87hxbBIleguccVe9na018qYdSlrcpsteco2bh8LfzEmMCAbICjri
         RSxzIf9bE8mcT4aYLB+1qyPi3ZiwZE0J1+JPcs4H6wQ8Bdw6ISVjqs+u2oQklU3h0eOE
         +s5IdriX1as68mz0Ry+GU4IIlWmz87WKVznAUXnzfKwQmExiBB1nRuC1a6Qz1WrxfDxo
         56hUida1mSZso6pGkUyYRjnyTseS/t2RgaDXhoAHS7mtKWsytQVcZQUabKIyO/TreNdg
         tLKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PonF/SDgCPcmmfKLGiNEs0Bfa6YqWm1uHjGPceEa6ds=;
        b=Qx5BdyVn1Fd8kCEklfvwtMDinjV28Yd3fHiFCSbFc4ZCVA0102oae1sHc0eb1iRy3U
         TV9gF6RsUMrGt35nPHc5vFfqhGgcOE4aPOntwxGG7lye517ayWAlZRJu7N/qf8mfPcHY
         9fRfrrvB3JucZgkyapqUYsFyjzJnUT8tYPDIVVP3yzpAEoR6DZm30iNglVwGGRjz/Ua+
         qXza1FhiylPQxWRsQvIMaQpeqFJNTObrWusOPz/1KGGnq8wtrHi7ieF2FwbjNNNSJ3LH
         RR8CtsMsKz7HDV67pZxWKECQXKtj1h7dcbGBSFOlVtBVN5LdSVj0Q/dVBXHMrcKr0W/T
         zhfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XmtEpm0v;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id w68si1334246oia.4.2021.01.18.09.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 09:23:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-_tejTklNMMKa5ryqppb3eA-1; Mon, 18 Jan 2021 12:23:07 -0500
X-MC-Unique: _tejTklNMMKa5ryqppb3eA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 494DC1800D42;
	Mon, 18 Jan 2021 17:23:06 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D25EA60861;
	Mon, 18 Jan 2021 17:23:03 +0000 (UTC)
Date: Mon, 18 Jan 2021 11:22:55 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210118172255.hirr6qpquxgq2vr6@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XmtEpm0v;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Thu, Jan 14, 2021 at 04:41:28PM -0800, Sami Tolvanen wrote:
> I can confirm that all the warnings I previously saw are now fixed,
> but I'm seeing a few new ones:
> 
> vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack state mismatch: cfa1=7+192 cfa2=7+176
> vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7: stack state mismatch: cfa1=7+160 cfa2=7+176

These seem legit stack state mismatches (compiler bug).  Two code
blocks, with different stack sizes, transfer control to the same
noreturn block (violating DWARF/ORC expectation that each instruction
has a deterministic stack layout).  In both cases the noreturn block has
a call to __reiserfs_panic().

https://paste.centos.org/view/081cbfc1
https://paste.centos.org/view/265968a6

> vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to do_strncpy_from_user() with UACCESS enabled
> vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to do_strnlen_user() with UACCESS enabled

It's odd that Clang wouldn't inline these static single-called
functions.  I could '__always_inline' them, but is this expected
behavior?

> vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call to __ubsan_handle_negate_overflow() with UACCESS enabled

PeterZ, have you seen this one?

https://paste.centos.org/view/b4723113

> vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected end of section

Another weird compiler issue.  It generates obviously dead code which
jumps off the end of the function:

  f7:   b0 01                   mov    $0x1,%al
  f9:   84 c0                   test   %al,%al
  fb:   0f 84 79 05 00 00       je     67a <snd_trident_free_voice+0x67a>

https://paste.centos.org/view/a1887ae3

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118172255.hirr6qpquxgq2vr6%40treble.
