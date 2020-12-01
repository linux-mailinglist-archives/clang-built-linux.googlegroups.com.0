Return-Path: <clang-built-linux+bncBC2ORX645YPRBFXPTL7AKGQEZCCODGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2F92CAE89
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:27 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id s201sf1794516pfs.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858646; cv=pass;
        d=google.com; s=arc-20160816;
        b=AWsLKjFimPAkhj6hLdekZItQOwf0Xg40ndt3PR9TdGZMlSw+0EeNxD7enQfsQX1dWH
         eZgU3596W8Zq9i1+pwGsgc+bllRT7sVG1e1nFu7sscabyNJ6iXYp9UDR9k4K3u+TvT1b
         sCIzrCNI6KHg3KeH7GLzCHCCHVKldmvDh3DjPIuJqpFlL/bMVx0hw21Pp9b8m5Rft8Pc
         rJEEdOLuidYjRFayHVM4bfUk/Pv5lu+6qAD2O39M1E3gaENxLN2LLEdesoCW05eDuovC
         eLuAbJ3iUHuW8xnbbEF/+t03dtxxkvspX8OaAYraqDCxr5oe1nlQCVJZ+mrHLYAt+775
         gqFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=5R16Uf6vo5E0Kcg+4ITmSbihbSzfmuRemKBLD72+nX0=;
        b=uOm59K26VWbXZHLqy9G1/D/wgDEQUiHYfzZWv1QgGERbw4L17ZsAUb5EiZp31dB/xL
         WnxGtX47fwvVfB4kiXTiuP0T0Fmu7V5BxCVvKm1mEBoohJL4XbmjWfvh5vr+aByWxgm5
         wFtnqlMdLRWtQ3AruGjts5yzr2YFKWLhq5eMFurCc3bO1W8dcbe+7RCfKKkP6z48aJAB
         DP6O+O3RW2HPi6ev23ENm632ngdUVoToVvlxHI5OD4jcRdHvC5UZ+OTujWZyxUKkHCMQ
         u4UI4ZXjPW9KioI6OpzuAHZlZYT8c1KUCFCW3nTgUPH944v9M9brai8aMIbpVfOvWWlS
         zE4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cTOyof8D;
       spf=pass (google.com: domain of 3llfgxwwkacmr9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3lLfGXwwKACMR9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5R16Uf6vo5E0Kcg+4ITmSbihbSzfmuRemKBLD72+nX0=;
        b=soTt+J9xzyzrwP6GNkiSbyTMzl80aQEd36oP/+eTllc98MWaC7QKj8vUj1mdgbFNKM
         jXz6/vIVX+anXCKE2xtgUJOwsKIO8elk16ptJjbfu4o+rojvbiBVLnOa3Q4xMIAFH1aU
         0D9ACoBf5x4Bmf9+Iy65gQrt1mGylpNY6nUCxi+92qTjzKjvfCByuTiy3baYtvcplpI9
         yXgEJ4a1/+yWSGpfMJ4jeVmiOkadvp2rR8L71YP+6hBVVeG0FRz0TQd4ud5OlBfStcwh
         fL51MD3O0y59T7/0Zi9OWYMSwbRR1k7WP4gftMMFA9HiLJrKt7W8IHMDQuG5af87NS67
         QcUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5R16Uf6vo5E0Kcg+4ITmSbihbSzfmuRemKBLD72+nX0=;
        b=BENAjHWq094BwNYluiyxh4XQnpgaTsI1xl6Lw+GPbaMmyMJnwrx/xlGP28vTLZZz+v
         lsqfMOE0ifKGR5zynsascROoDX2Z++YiHjiA6IQNMMT3qdqQHBlHQiLCrSWBlaW7okbI
         8S00SNFdy0GvmLQq9ZXGgHrIB0pKDUIiBlreGo/w3f0pTnoxoTlXLs8ieLYsoQJLgQgf
         O/b5jqqD7xZ+G1tGj80Lh1OtCLnBQ5CidtIEqh2GAHZrUgBkEsJmMHD2XuZ8gC5iHluC
         JJkn7kTViHlLSdvkwq1ZiCRQ2AO9An+pelXWmbMMJ+0jcV02eihprjWwvfigj42RQgeS
         TCYQ==
X-Gm-Message-State: AOAM530gHiHenW3SJjxj04qkkvu2sNm7OTDqEP0FEq9pnYPW30p9QChu
	1Fr1qxc1Zw5Dd3Www/RsWbA=
X-Google-Smtp-Source: ABdhPJyuXaXz3NtXkHQN6cQFDE3ayUbjaaIz+OcZoTHV9s/op5AIJag8V+Q8CswhDJHOxbLcHlx+/g==
X-Received: by 2002:a17:90b:33d1:: with SMTP id lk17mr4845944pjb.174.1606858646364;
        Tue, 01 Dec 2020 13:37:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8f0c:: with SMTP id n12ls21228pfd.8.gmail; Tue, 01 Dec
 2020 13:37:25 -0800 (PST)
X-Received: by 2002:a63:7f03:: with SMTP id a3mr3970919pgd.313.1606858645669;
        Tue, 01 Dec 2020 13:37:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858645; cv=none;
        d=google.com; s=arc-20160816;
        b=buikoj+Zmkj6hiCVcx9/ja26ql7l/6eicDNm3fzqLO1Av7T4RyPCryiKzz8gzUCb7L
         qZs0FFvo7fOH3flrLpIDrFpJ0X2I/OOAe0NpCcZwi+YKOYuB6MBmx894PJPtP54FJj26
         0ud0IiXW91m3mEc8/lYLqQVVojOJpkB+V+gQCEfLfo39+/bhRe6+WHPLC6NxNNsvy3O+
         dX3LyGoq1qK9pagVVMKvkAmmcc+pk0/WNWCS14RwmTXt6mp9vRWw8BH+O0sSv+XE5Gv2
         V5371rnCKu8ghzlQkSSHgc9nURnwsOWh3OvwRX+TBnoCrcdIcLqIaCOLycHXlO6MFOU1
         ysww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Ioq5snZDZDriQbZnteUYOvtfB50kdQ3NzmE0Bt/uZj4=;
        b=1G1W1nf+sNzefIkgkfMc5B3b8tr2ziYhpkX+7CuAZx1qAbbNYO8cLS0FzQjvPbsqqB
         Gxfh/iXqT/Dk+n2HGoQPGOD71XyNhMFQDNsbSMjhJ409+XAesO4boGd7xnECown4MVGV
         zf7OmWklF3AILgUQcLiXY4ihxN6oE9EW8MfMGstd2mgvZ0fOPowa8eG9CFfsRAxhGZAd
         8hCEYtpp6qRmurO+nRYY5icaANR2tieXufvNi2bsMk6zwmOgtuHN9ALZGwOtvFGlDRdW
         dqLTR+Nizzpa/2LBupMd8TJaj/L8y1y2yPzlcaWaFCLj1g040QdM+Pw92llAb8UxsVUM
         MKZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cTOyof8D;
       spf=pass (google.com: domain of 3llfgxwwkacmr9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3lLfGXwwKACMR9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id o2si93345pjq.0.2020.12.01.13.37.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:25 -0800 (PST)
Received-SPF: pass (google.com: domain of 3llfgxwwkacmr9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id b11so2462273qkk.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:25 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4051:: with SMTP id
 r17mr5301753qvp.39.1606858644813; Tue, 01 Dec 2020 13:37:24 -0800 (PST)
Date: Tue,  1 Dec 2020 13:36:57 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 06/16] kbuild: lto: remove duplicate dependencies from .mod files
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cTOyof8D;       spf=pass
 (google.com: domain of 3llfgxwwkacmr9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3lLfGXwwKACMR9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With LTO, llvm-nm prints out symbols for each archive member
separately, which results in a lot of duplicate dependencies in the
.mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
consists of several compilation units, the output can exceed the
default xargs command size limit and split the dependency list to
multiple lines, which results in used symbols getting trimmed.

This change removes duplicate dependencies, which will reduce the
probability of this happening and makes .mod files smaller and
easier to read.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index eae2f5386a03..f80ada58271d 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -281,7 +281,7 @@ endef
 
 # List module undefined symbols (or empty line if not enabled)
 ifdef CONFIG_TRIM_UNUSED_KSYMS
-cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
+cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
 else
 cmd_undef_syms = echo
 endif
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-7-samitolvanen%40google.com.
