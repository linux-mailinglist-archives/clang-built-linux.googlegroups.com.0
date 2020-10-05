Return-Path: <clang-built-linux+bncBAABBUMN5P5QKGQEJ4TEBII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8858228309A
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 09:10:10 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id r6sf2867068lfn.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 00:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601881810; cv=pass;
        d=google.com; s=arc-20160816;
        b=k73a2kyMOfnzNZJDCW3AujFaDex0vPlHsiCJQGx3OrTVDZBSIvXHJmAQdZNlolBrfH
         laV3s19htEApUFNYrezBfjM+BlkPrNZYCguVcZnPOzx9QHNA0ZHCFDYhiGyZr22DAWUH
         hPciSbl73P7vR/jptZHx+2YHk71PG26LnziXWCG035qEIYeFY4Tjp45liZn8Qiw6NywR
         WWG71mplfvj+dlajN/LzX2kPOGxkby5VVe/GTgjWuQDUcrpS3aEDNtf8vyCwyW4VPu/m
         DwsPDpjyFXnHSbCUrZcElEqi3xa5gPFU/YVtGGljJ+7GHc9Kk1tYsBqhTsRwkmZTxx+5
         TtSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZeELM0tJXN7+skIaRazfZJ07BX64HjPYgLYCHaS9GyE=;
        b=oEYsjQLWhUaCrswpmV9DCKsxBe65SulfqW4T2FE3yt4hVd1nAIwW5pySn4RX+7/nz6
         HBtp8TepBJwSW4NGeNFAiWWfzXe6JVE9KcyAzXqZQJgum43J+Aj4gTbvjXBsw/S/vx9N
         +IqK6rkKLLoCS4VVy8dvwNja0cJc0NVmA0ggap7s3Ko/sk1z53eSkMAlCrj3Ohagl+Qm
         BM01TKhjnuUgLwjSbhoA+aliFjnjBSRBZ+r3KXdG2KRte4ph3Z/KYiNZz/Mu2b/mnhJP
         yfBZusoBilW3BDduuV21C5HRL8prbE667j1LNN503n4503+TcP1TePSpyyeuiIRLsw6t
         UUTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mbenes@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZeELM0tJXN7+skIaRazfZJ07BX64HjPYgLYCHaS9GyE=;
        b=slwSugos5ATXgbGrIcoKxyOMq4PhlMTI+Vf9ymWfeVPG6jV71cxLAwhZ50dmvFbi6l
         milSlx0yTVr/yDyVUGhOl8WrMZA0M8kTD3BhhOWqw+uHYeDCLl9X5bmKVNKLGuJELZny
         5i7KE2MgNUcD9z7Js79hzISD/VAXCHwnx41izqOwdN5LTmN6WnXols4soBWOogbCgo2E
         uuUvls90n1JfWVvQ9YxXeTf2vgLKWLSwxNFwvWx4VAt7CUEQ8AwJUItYqr6G8JGxQIuS
         /tE+WpEsJI/pcRPVJ9vTfDVTVqQ90Ylid+VpK9XEfmfPDnvXjOGuwbrmyBzhmDBwuZBA
         FlXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZeELM0tJXN7+skIaRazfZJ07BX64HjPYgLYCHaS9GyE=;
        b=P0xDDf6WydBbxqZEjst02sSyaJRXW1gbI1uuZh7mvowQs4zYaDvkNNOwxNHoNT1bMB
         haCcyyIftnC4i60GRFIZpp90E1RKlKDowVPfsczbLbkAqLbp9CxIHpRJ1NcAI+1pC20M
         GR5Jx1qroInUskdeVhHCcQnRrBWtHWiOdV89GK6LdhYR6LHPVUgGWvFjqRTkTZlBwdMs
         S3Xys0dMiWXc1pCMgL/x0g2GWtu3NYogxxIsnNzc+aIDCM+jnB9aGVoV3wHKQCZW7ysB
         jvxpxgP3wztT5FDzoyfnhNP3otW3ysOBoPLILJjWiWmwxadRqwNDu8Cx3cfMsj+olU0V
         Hi8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k9nQULVXTfeoMqdhgo06gLCf2pGYgWTEwYc931hvvGm1+/IZO
	ko7soQPTATMWVQ5ubSxPK2o=
X-Google-Smtp-Source: ABdhPJx20bGw783E4g5qud3UcqAT8uA2aTb2Zdur0ywZZdd2b8dZ+jz1c0Mqm7yEpEsFWW7TS82rNA==
X-Received: by 2002:ac2:443a:: with SMTP id w26mr3418408lfl.435.1601881810093;
        Mon, 05 Oct 2020 00:10:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls1726197lfn.2.gmail; Mon, 05 Oct
 2020 00:10:09 -0700 (PDT)
X-Received: by 2002:a19:b4c:: with SMTP id 73mr3165087lfl.469.1601881809232;
        Mon, 05 Oct 2020 00:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601881809; cv=none;
        d=google.com; s=arc-20160816;
        b=zEhQ6hhLvMDNJuMNqy86sjzVmidIo35mCKLactNVqfhf+b9uakiMFqg4aUiyn3qOXk
         zeW/R6DAYNCVtYWw7tmG9n9xZoNv4B1woNTMIOshp8v1B/lL2G8nZAplbT/30TK9wIhN
         ZbSeJGcP5E2bzynWPh3XCPjzvSuUZrPLiCdvwg4RWwLJk4XOC6C4ResTB+uHBp2+vJ0W
         SDRmkYPAR9HMl1JujvwYA/JkalKO2Nj7/4/OOfEncRf0jtqdnaFXZ/MNrcVLBedUOFuM
         jOUyK0UBpH4NpW7KFUE/u58M0cHY9oWi8vAHFLUuDYoijMiPEJHUPuT/T1ir30dTkyLT
         VCfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=98pKlkB3HRXcwp17Hhsuxn23D2uK7g0e8tVZt5HQvxg=;
        b=kwlI6/28IrkZzUitYS1wevnyPCxXOn+nt8KLYJvIE+rhbGqTyb0WVqvlMg0910iUmi
         CzxC7T0VtB+IV7645wB1IbhdtoyQo6/VK772Ppx1VZJzUg638ynFm5lxeKylY+45bQcD
         Lu4CSr7fsRQSX3SxwCTMbZNeVyrOd3m37wBPqF/lUi3LtS5o3cqW00AubmgU1ndLImlN
         t3y0TGs+ARNrmd5X3mkbfbfBls8Hqve3Uc98w9+3Xt8GNYO+zlO2RjCD/i4ediADhWlI
         PAAjhXKISx/Ue7uOHGSGZi723/vh0hX7AgjKXLWugiyy+N1FSq7dlL/L81apXlFPdxeK
         wYUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mbenes@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id e1si338242ljg.6.2020.10.05.00.10.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 00:10:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 600D5AA55;
	Mon,  5 Oct 2020 07:10:08 +0000 (UTC)
Date: Mon, 5 Oct 2020 09:10:07 +0200 (CEST)
From: Miroslav Benes <mbenes@suse.cz>
To: Josh Poimboeuf <jpoimboe@redhat.com>
cc: Peter Zijlstra <peterz@infradead.org>, 
    Sami Tolvanen <samitolvanen@google.com>, 
    Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
    Steven Rostedt <rostedt@goodmis.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    "Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
    linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
    linux-pci@vger.kernel.org, x86@kernel.org, jthierry@redhat.com
Subject: Re: [PATCH v4 04/29] objtool: Add a pass for generating
 __mcount_loc
In-Reply-To: <20201002141303.hyl72to37wudoi66@treble>
Message-ID: <alpine.LSU.2.21.2010050909510.12678@pobox.suse.cz>
References: <20200929214631.3516445-1-samitolvanen@google.com> <20200929214631.3516445-5-samitolvanen@google.com> <alpine.LSU.2.21.2010011504340.6689@pobox.suse.cz> <20201001133612.GQ2628@hirez.programming.kicks-ass.net>
 <20201002141303.hyl72to37wudoi66@treble>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mbenes@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mbenes@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=mbenes@suse.cz
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

On Fri, 2 Oct 2020, Josh Poimboeuf wrote:

> On Thu, Oct 01, 2020 at 03:36:12PM +0200, Peter Zijlstra wrote:
> > On Thu, Oct 01, 2020 at 03:17:07PM +0200, Miroslav Benes wrote:
> > 
> > > I also wonder about making 'mcount' command separate from 'check'. Similar 
> > > to what is 'orc' now. But that could be done later.
> > 
> > I'm not convinced more commands make sense. That only begets us the
> > problem of having to run multiple commands.
> 
> Agreed, it gets hairy when we need to combine things.  I think "orc" as
> a separate subcommand was a mistake.
> 
> We should change to something like
> 
>   objtool run [--check] [--orc] [--mcount]
>   objtool dump [--orc] [--mcount]

Yes, that makes sense.

Miroslav

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LSU.2.21.2010050909510.12678%40pobox.suse.cz.
