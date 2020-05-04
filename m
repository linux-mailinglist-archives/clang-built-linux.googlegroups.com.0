Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBENTYH2QKGQEU475XKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7838F1C443A
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 20:06:10 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id g6sf381483ybc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 11:06:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588615569; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXdwam1OKz40JzeuXenoWRMNKL2vLJ/V1kL08yhGYotp+Hc94A9XfxT2f0+bcAUwie
         k+mD/IUlamZCgBrkd32aD7A6qcGFqV4lowYpAw3p5QPUxML/gHRK0mDxCyPE7nSktxHy
         VVuic40hhTME15icAZRJM156DUOQWrboMGSt4n7W6HlIfiJcqwTRwOSAK9tEjQUUDn4O
         fKl0JEtHU4awM1R6j3O7yNqHJqpxSZknU8tMEIVpMzAOILiaIV2KiV0HSYyeaJUVIJuf
         6gxxuhfwwVSM6TZAz8xgX963Yp8WkzlnZEaDTv+rkbAqjZ7y1fqXwt3Wg7upGjNARL5B
         D1Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q5ZwGb2q3CptXuVtSH9KAnOVlMK2DOvJhG0LHAU8R3Y=;
        b=I8iC49k43mda/gIE3Tt6VLZDhBx325wbW9ZZGRJ/tW4Uzz4zfpSdd6mFmTrm42tdQQ
         TAP1WjeVMM8mAtg3lWwTO4DP+BByfmP1INBRNbq5RF/XYDpsDKrjNQc3Dd+D4zWXq4f6
         xPunfhJMqtL4G/FFff0x6xWf+/VmUhQlkqLlCpee1qXHTaS4ABNyfauFH6t0+k6OTAhb
         P+nB9FU7UZ7mGbAlB7EBJRbkomBbxNmcSxjy9dSSL02yAZrE2EaRZmwWoWbUQZJEsbF9
         fjKowH6mMjjnBO9A4VSnVV4JCwEWP6qEH4+2qJ255uAFF3VZdxwn4TI8eO0QqLY6helj
         Nong==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VfjjNs3D;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q5ZwGb2q3CptXuVtSH9KAnOVlMK2DOvJhG0LHAU8R3Y=;
        b=kY7gdnkj6QwxADkMT5FerdXr/8I/Gubc12MH59JL0ufRIuWYgHFDpfugj2l/SCnV65
         LDN6nUbCWQaejTSdTLhcJP/4HADX65tLHdEtjbkVQkBoBwnZD80UlH7VxYqZRkZzy/FH
         fjYdmPxrKescxDNIT0m+hAwztZ9u/swggT8zXiOl7eVZsFxoEojz9WfsQSU0UNhhAxkd
         37kZIR8lzb6gQ782tJqnh1deMv5+7YWU6RzW6FXn6MQ3WBNd9N/cMrJLsE91Ux8pD0J4
         Gtl5Ol7i961pkt3bYDhWU6yoqx1rNyGnQCizPW4AY6RI4TtliuOOhHTKUp3xmNGEg8lJ
         o94g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q5ZwGb2q3CptXuVtSH9KAnOVlMK2DOvJhG0LHAU8R3Y=;
        b=ejNra+4jCKhwUCPhDBqsgAXHTAClGaEGHBWez3ihZzmDHGIGpS0Xd6F0iNEH/Eifkt
         HAZ5TwCJkDvFybcul/NF1lHckI6Q4/P9isavV6Xxt42NLxGNb2xuhXFwsBqUDRJP5UMo
         0bMr6dw5BmPjsvUBzEzoKlo+7fOx4M6tIBH8vFliU392kxlOzPIDRAyi38kT/CV5E5HM
         rQ/Yd43O5JueTTrAxZdvYu4brv/0Bp4DuX5WktPbkceJCVmvi8hvSxX6a9tRDLjf0afl
         qknwBVd1fV5yufikPWN4W56VBfvK7TP3RSFfoPeqvCA17AOitwHdb6Gf5PR7CYY7IivD
         BzVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub2m4DFbuMiwluJsws0p39BycCeFdz6IyLbVVST4pmzV14PaT+o
	jrlBO29V5AB6JRRoW083anE=
X-Google-Smtp-Source: APiQypKEkKZ1zmnXMY2+tSE13MBjkrLGUJs22ukv0tOCMiW6mXu+EePXDCJNn3pWU2cSqgrz5QtPxA==
X-Received: by 2002:a25:2309:: with SMTP id j9mr621678ybj.417.1588615569364;
        Mon, 04 May 2020 11:06:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:be4d:: with SMTP id d13ls665286ybm.2.gmail; Mon, 04 May
 2020 11:06:08 -0700 (PDT)
X-Received: by 2002:a25:cd82:: with SMTP id d124mr793240ybf.150.1588615568934;
        Mon, 04 May 2020 11:06:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588615568; cv=none;
        d=google.com; s=arc-20160816;
        b=wJRhIaGJ7OOIVFg9lDKR08DjEKMEXvdWIm4nzrA2pwodGDr17hJVn4bgHBQo7nfhBt
         i24v3/dPzjorP4qFbSmjoH8O18VTyc2eVlXZdH1RCe6w4j928nR3zP+koTMi6gybYSXC
         jf1ZFlxEF8oBiU8vqWh4FxG40oWml4jR+R2GUQsnyC9pWS3Fielg8ePKFVv4BbmZAuJF
         Pmhge6p2g9rOrBx0tb1j9jCEYR5i9V3CYQeqOT56g2tRBV7YmBAlqxqvkOH6okIrSJ1h
         qqTtqpJuHxGgYFVPZvBxHkEsYi/Sd5grRNpntO7lQv4vTPG4QNmumBULLdTK3swEQnrU
         BqBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5H5y0GT0IX1bjv46W43wTOmcN/3DzOsesayYr+f385c=;
        b=iMr9I8s8Nkkvp2sOzBwoA/1vjsxCL4BtxIUR8sj+cWTAOjx4g6wx9Tr8MheGM6DRfS
         gtVt6yVnFS9FTW5h3W7U0tTbNtn8zXbekINvrXfpHQ+0nAl5Z62SRp1+ZKEVy6PgVgQ/
         YMUNAsclWPW9xVq0PCRUbFdNWpc60BI7K6V32JRuRtOC0g+SBgSL/utPliDg5h5qFlDJ
         SzW4CIvpo0KppB8kDtupc59DmRzLDYCArHihBS7j58vxIXaRkw6fNOETQtaY965BR/Ep
         /HDvBcv122fuDxR4JFk9oudoONgKD7PGykBN594n/a3V0q6AanHkMBIYYIhVzyHVzhhj
         FyXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VfjjNs3D;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m9si944229ybc.3.2020.05.04.11.06.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 11:06:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id x15so5931258pfa.1
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 11:06:08 -0700 (PDT)
X-Received: by 2002:a65:4c83:: with SMTP id m3mr201796pgt.128.1588615568087;
        Mon, 04 May 2020 11:06:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p2sm8099142pgh.25.2020.05.04.11.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 11:06:07 -0700 (PDT)
Date: Mon, 4 May 2020 11:06:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <202005041050.7E29A56637@keescook>
References: <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com>
 <20200504165227.GB1833@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200504165227.GB1833@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VfjjNs3D;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, May 04, 2020 at 05:52:28PM +0100, Will Deacon wrote:
> On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> > On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> > > The vmap version that I asked Sami to drop
> > > is at least better in this regard, although the guard page is at the wrong
> > > end of the stack and we just hope that the allocation below us didn't pass
> > > VM_NO_GUARD. Looks like the same story for vmap stack :/
> > 
> > SCS grows up and the guard page is after the allocation, so how is it at
> > the wrong end? Am I missing something here?
> 
> Sorry, I'd got the SCS upside-down in my head (hey, that second 'S' stands
> for 'Stack'!). But I think I'm right about vmap stack, which feels a
> little fragile even though it seems to work out today with the very limited
> uses of VM_NO_GUARD.

Yeah, when VMAP_STACK was originally being developed, IIRC, there was
an effort made to eliminate all the users of VM_NO_GUARD, and it looks
like it's mostly there. Really the only use left is arm64's kernel image
mapping routines, and then it's not actually used in the traditional
sense -- it's just a boolean for whether to toss in a guard page at the
end of the data section, and the VMAs are built manually. I think that
code could actually be refactored to drop it too and then the only user
would be KASAN, which, IIUC, wants to build consecutive vmap areas.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005041050.7E29A56637%40keescook.
