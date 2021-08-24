Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXVDSWEQMGQE7DZI6QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C083F6A3B
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 22:09:08 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id o6-20020a056122048600b00286ac0ff45asf3968782vkn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 13:09:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629835742; cv=pass;
        d=google.com; s=arc-20160816;
        b=jK0peG92k5Wer82emnSU6j1NaOLr9VuaCQkgVCpthXvfgPlIS6Fj7N4QW+FSweRUkL
         KEczeE7e6iBKNAEoaMASVNuW1bC7Ykf48QwgnPz/L1SBuzTsUGSYrTpKU3vH8nVgikDb
         +xS6Ox+93XSxGnj4XbYjr4HD3Sgv1732CVCvbHdH6d5hMnLxYRCG4IUk2k+hpA5HsVaP
         mmEkZ578HJ3gFQMIRbrrfrQoHRKgZgs161PtnyF6UOwe+5JGcItrBe25eI/9tNvZHI/a
         Gms998khoaLgW0/ksJKHJ2XVEUunDvOdLy0X9odQhv+YZ6C1Ceyw+1gkad+ZI89R/8Kq
         ci8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:cc:to:sender:dkim-signature;
        bh=5c82q97eJ9hlnnMlzUlofTHe25IBBZWUjQbVZrSZLUw=;
        b=TgIivCGT86uWIvCDfCCrteFIIbSRNt04xRkPS/F0jiX3tT1u9ZySWp2cgWNUtJuz+a
         5vXj9kPYB9b3eeLTIiJMCZui7EMgZlWSQDtWLADduso8FEygyJAIlRAW5ZUFToonznrg
         4mOIh7GZKEgGyVBwHa368YJyFFaWSGM57eDounbIdlEpCIs2yusicKjwb6JB5I+J9Fkc
         Mmf4Z8hLZJUJbIur7lvss+MZSrwxspyn3NX1LvqVg0ZYC3Q5x2KGc7IqHXdpcMpR/5Xx
         2T1xQjusgSngxKB4ElXalr9RZbANDR4d4ZRBd9G+QDU1atIuHU+znKg+4e4xssYOTkSl
         JJGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VSa+FJEW;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5c82q97eJ9hlnnMlzUlofTHe25IBBZWUjQbVZrSZLUw=;
        b=FTtPALvxmae0VCRIHV5sfmw5pd4wThLhqmPAFOJUSIMfvoGVB0dJWBagqKLZRmxaZU
         NVwHTZZxMC17ohl0PLNKGPUb4pN/qLLF72GM+HkIStKIw9vPgMxRA+0vGNqDBnz0jdR4
         KXdX0PbRgvfw7KbRak7OoBGjdtZNTD/K9ocXcf3w/fSieq1g6DBbfD6eoPk187jfYqBP
         ylHiUGtnFfbm2YeYGgSJZA83rf4f7Ag3EwGo4sspMAKE5MOxgUZi9z3G7Zga+hbVTnnz
         KDPwwUdpKgu73Xv3DVBRmEkCXU83UBCjDdk9ZrYJiVkJhvTqlRVQ0sfiNz81sLq50zGg
         yifA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5c82q97eJ9hlnnMlzUlofTHe25IBBZWUjQbVZrSZLUw=;
        b=Bn4NR/aplXwV+OyubBN9QyY1lHB3ArWqDZsQelUO6dxEXMcf53F/mycAqTGBxhTnnw
         qbbfHQg0yWh5ooGPxTRCNOTyNXC4+bWWrQOHMKUU2CDRp0qI30A8U3i1AwaNQPvs3M0Y
         5yy+XREslwTnRYsuKHDJzXFWSHv7AYu3tk2VBjjZjeHuhB1Mh3S9etIL6pjtITXyKVRf
         ic4EYa1j3FW5lO9Pvow0i7dNOsZsBiPDn3+U9MbkZR/slyHBYkoa4vsr94FByUmTnlLT
         TIfUDWN8LZHgk5OcddUGD9AnLyMJ6Fi44CkuYcBcfeXnaT5cqmO9tKrcaIlGhBIansHl
         yEfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326pS/6sFWq4H+BuTn562TSkIW534KK2NHLbzZ/xTgc03j9inzn
	VaNzxgzWuMKMKvQR3clIISA=
X-Google-Smtp-Source: ABdhPJyz/J8L6dAJ25X/lFQFuBItZbrKbpWNfk/U0C47+M8kqBBPjqIZmC6ragHE4cgazDsvqxxJLQ==
X-Received: by 2002:a05:6102:e4f:: with SMTP id p15mr30363635vst.38.1629835742794;
        Tue, 24 Aug 2021 13:09:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4bc7:: with SMTP id y190ls8814vka.8.gmail; Tue, 24 Aug
 2021 13:09:02 -0700 (PDT)
X-Received: by 2002:a05:6122:1204:: with SMTP id v4mr27762659vkc.4.1629835742309;
        Tue, 24 Aug 2021 13:09:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629835742; cv=none;
        d=google.com; s=arc-20160816;
        b=KxU1/z3xbk/1JvKM8Tr3cN8+v1vIiyTfj8/7C9WkethFdUK9utxexuwueJaq/JIONR
         n2+W96SwVFvJgIKbl+KasK+3aQh0HQrAxEvb57G4kJfeu2qlzA4C514vzERzAPe0zo2r
         Mg8Js7l5pNYI2vKYUYrXozDjWgx6gfIbDf4B7UggbULI4lW/AwbixmL6CX4DMJZ3Iopc
         LGoz4NyOB5gNGkqDT0cTDiFbaIPG+bsIiPC1Sk/8fuwdMQytyPw2QvmSy5zmKsu+Q5vd
         Oyvh9d6h6XoyvqH9kp8aHeJGgahOhgRvVS9rByZxws7cV0YXeo4HUGfSBrsfDda6AGUW
         dziA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:cc:to:dkim-signature;
        bh=180NWdi9GChTnN9A449Q4qkhmJKB3Y7sltNdPuz6uTY=;
        b=CX0fnedAf5En6clG60rxF3qYdBkwMSGkqcgvTW3JoT4tA31eH9TYINYXHrs0uO/pFz
         zCZM/YNvKow8xCu13eQnlj8FwLd5pOuhE7PEGWQJ+K2VWZiOAW5JShJfG1pL/AKYxuNI
         QhYEHXIyjqQImk59Z4+d1hBujLwOz1DBJcZ2zj2J7yic8aKlz2ESacqQ62htuQ50u20k
         tzd7+rrOXP2IyjNxPSb2zegvuTngvS2hpWuiOrgPcertd5BZ4LtJQy0+CFMv6SGP0oeb
         ZqLDuy8LAyL6nmaujtpd2uHaqgDEpUnYyCJk8IfGxUq2ghS+3XtuIEJYksI4LgkhT5uh
         ihOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VSa+FJEW;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id az31si158546uab.0.2021.08.24.13.09.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 13:09:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA50B61357;
	Tue, 24 Aug 2021 20:09:00 +0000 (UTC)
To: Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>,
 clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
From: Nathan Chancellor <nathan@kernel.org>
Subject: objtool warning in cfg80211_edmg_chandef_valid() with ThinLTO
Message-ID: <5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org>
Date: Tue, 24 Aug 2021 13:08:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VSa+FJEW;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Josh and Peter,

An in-review LLVM patch [1] introduces an optimization around switch 
cases, marking the default case unreachable when all known values are 
covered. This ended up introducing a boot regression when building a 
kernel with ThinLTO, which Sami reported initially [2] and I reported it 
upstream, generating some discussion starting from [3].

There is an objtool warning about the function that the author of the 
patch tracked down to be problematic:

vmlinux.o: warning: objtool: cfg80211_edmg_chandef_valid()+0x169: can't 
find jump dest instruction at .text.cfg80211_edmg_chandef_valid+0x17b

The LLVM developers are under the impression that this is an issue with 
objtool; specifically quoting Eli Friedman:

"The backend can, in general, create basic blocks that don't contain any 
instructions, and don't fall through to another block. A jump table 
entry can refer to such a block. I guess certain tools could be confused 
by this.

If that's the issue, it should be possible to work around it using 
'-mllvm -trap-unreachable'."

I can confirm that adding '-mllvm -trap-unreachable' to 
KBUILD_{C,LD}FLAGS does resolve the issue but I am curious if that is an 
adequate solution (as Nick has frowned upon the presence of '-mllvm' 
flags) or if there is something that could be done on the objtool side. 
I do have a small reproducer on Phabricator [4] and I can provide any 
binary files that would be helpful for seeing what is going on here.

[1] https://reviews.llvm.org/D106056
[2] https://github.com/ClangBuiltLinux/linux/issues/1440
[3] https://reviews.llvm.org/D106056#2953104
[4] https://reviews.llvm.org/D106056#2961136

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5913cdf4-9c8e-38f8-8914-d3b8a3565d73%40kernel.org.
