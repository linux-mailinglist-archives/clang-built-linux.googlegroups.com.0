Return-Path: <clang-built-linux+bncBC2ORX645YPRBKVQX7ZQKGQECF3WV3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0D5187399
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 20:49:00 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id d9sf10923116plo.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 12:49:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584388139; cv=pass;
        d=google.com; s=arc-20160816;
        b=ErUN2aC9V6krdodzfVTZnHyQ6fXZg7ibEL9m+P5rgL0u1t6Re0H0Ny9Yb54V4lxii/
         RMiNEPc04WdtCUb7bd/Jf/sltx64LSf723M230CnL/4TR6ahG0ynXuEFPZulcZIFQNns
         BTmsH8zNyNu25jK32+3bdwgOI3XX8sSxSI/SVxEge92IPuwNFnw+5mQjnRkPxz7uli7b
         Nv8U3ZFJR6J2+Rc2Jt11rT17V+ZZTPdtcbOUUtde41WwA5E+0XLqguqDtd8g/DZwtyWk
         KzkK207wfE1Sa6buLAHM6BM1o94FtrWaM1yi6HCL0jQV8VcaHjZ5HAE148cdomNZzwpv
         UxiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ASZWdZyUNrn/0hiCH6Ld7yIIivkuenv8jN8na82nC2M=;
        b=QEQsosEckOnMKunDbHn+JLBek3JEVPBrgQGSNbmNl7/AVPsggek1QZJUmZuL7WM8yG
         O+BHOvq1THvyL5GPvSfTdO0/w3ZRvH6v9DVRQDkaJtR3nK0/tqfNuAfQX7lfmaHZG/lV
         eQwUsxx7rEC6Z4VcTF1/Y3V0jZHMA6CmVm//ihUTBDvlW2v/0V56D2QgynuyawvoL5/i
         BfT5711Jlhcd6lIC5QqkOmyUr0oYxcC2Eodg5WUe0C1C3Zx4wb0qmkC3r0xfYA2lFRXW
         +TVgf/pB7IDeTom/sTtuBZVJJqMWyyCEgCoAD+MCFHWPqC4m6dUi9FaIR7qlolr672D1
         Dl6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D39eGufJ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ASZWdZyUNrn/0hiCH6Ld7yIIivkuenv8jN8na82nC2M=;
        b=QFiIu/fWipZvz1MghxvmszZ8WOfahKXPBaXlDzKoBxwDQrJ0N2IM3CDseY8NBpB6CK
         TnLyhtOoZ2Fo6IzKBMxarg152yxVakqbeefAX2eMQcjPqpKDXEG/cXqWow6YvaB1q94G
         ZG0MttA52IfBXSxIu5sXBwOETHPQEfDkL6YVn+FDUmvrT9kk6l/eNgzjoeAJKHy8Go3Q
         JgG0aNL/LfAWSY/TVm07FSF83Bi6jRPN5rySyFNB/rd/h9OMw5RWXeR1YRa6eUu+bAqW
         o00hfG3i1GXRvs8IOBXu48TrVW+ZgyKURpw9dImj8hJDx2EWcibhyFa/XoBT0WzBtZ8x
         gkSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ASZWdZyUNrn/0hiCH6Ld7yIIivkuenv8jN8na82nC2M=;
        b=GYo9XKVMyS+doT4xa8hsXU+HFPILqTuCd9/jtAtBvLZnmoXDuw7e1PDZLDCVlgORSj
         Q5tEnYPBuAGxi4Y1+G6o/cBG1XIC5PJvftEI7FXkSKOX0b0rW6ESvY0NvektpfjdfTIL
         d5zn4Pu5KegJKCj98VnEa7aUzaSmSZrAzcAc4UaDFfYs+NG+JLadxlpazSlLu1IzMuFf
         JumGEV8U6mF/d6dGJMU/2EzigeGKCspF3asF9i7lY9n3bBw49x2lhgj7tcBb9KGHr1rF
         E6V8yfMYhLWbETAdo9VD3ibtalN9JqWQhDugJr/etP42pmffwR50UYLe4zTPHz9aqVGD
         +hNA==
X-Gm-Message-State: ANhLgQ2A/n/zyZ4y64rU+SeDsUw+e2CjG2y/nOZTeeRKGSd7RT+GWe4K
	y67hlwdtpmo8wA0+K/dflcA=
X-Google-Smtp-Source: ADFU+vt5PvXhi2D67LRossqZtw5m9NzcnYuQXnGfD2rzZdCTAiKdDh8CrOFX3JCUI+KLi3RGVrbtbQ==
X-Received: by 2002:a63:b146:: with SMTP id g6mr1410803pgp.85.1584388138889;
        Mon, 16 Mar 2020 12:48:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls3686593pjo.0.gmail; Mon, 16
 Mar 2020 12:48:58 -0700 (PDT)
X-Received: by 2002:a17:90b:23d0:: with SMTP id md16mr1172619pjb.163.1584388138326;
        Mon, 16 Mar 2020 12:48:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584388138; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfkiZaale2zHJ7sFgbzcmOQV/bn8erh8b019zbqZxEqnxF8rDyx8Rjag0xoPKmCAT1
         4dl6/uUc1sC9IVut8ts9X986TI5mK+TB7glDzuhMdTgAlyOZobL0ARYvshENBidtSBbl
         w/dNMjB2MX1khpUvJlkpy9+OxLmOHwoc40eOqlOQwSEZxsT3TEmkuqai4IHvJ0dhX5N5
         5dxzgjxbpscMrjnE1mLtWCNcP0H1R+as45EEcWRQXXecS53DHvXAbruHSB/pMDK//UIh
         qfLnqcfAdSgxFHr/t3TAx04dOzFiVP+PnbkVezmUnhx3yEIs5FxmRVYfa1dWfHarU3zN
         1pnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jWRUGDgMrwnfTyv4ERnhbe8axxWGrsz1k1kMDbt2fCs=;
        b=UKCcktSrz9mj4iz2slbUH5xQh4cYlnnhcbU3X6O6ASCswFfIUxqtdEz0yo2vLY0kO3
         GwJp5keOTqKhgatVBbFKxjmwwr3EfoWqyclsr8GhmYV+b/nABV3eHybrlIftt3voDOME
         765BPPiuqljQ4yWpIdib8+RoD292hK8zDXojuo+1OsZ0f1Esg9qtQltL0/Zaw3lsOpoV
         Kj3O3NE9WzJqwIt3tKU2vZyyJZiJ6zRH42hhs/0IxP2GOtlBzNwnJFRuerypv1/SjiBm
         etVD9miy2kwC2E7rYim2pizpU+G4PGJiCN/MMX1UMxS5bqg2Pb2xJQX9gzX09CO5AVtS
         uwRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D39eGufJ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com. [2607:f8b0:4864:20::e2f])
        by gmr-mx.google.com with ESMTPS id ml9si79576pjb.2.2020.03.16.12.48.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 12:48:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f as permitted sender) client-ip=2607:f8b0:4864:20::e2f;
Received: by mail-vs1-xe2f.google.com with SMTP id x82so12181468vsc.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 12:48:58 -0700 (PDT)
X-Received: by 2002:a67:ac4b:: with SMTP id n11mr1311053vsh.44.1584388137027;
 Mon, 16 Mar 2020 12:48:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200220234858.145546-1-ndesaulniers@google.com>
 <20200220234858.145546-2-ndesaulniers@google.com> <202002201643.2C3B1577E@keescook>
 <CAKwvOdmVWB7+cCbKnQ1QYUeB4+R+_ohwohFTHA3Acp--hs5_Hg@mail.gmail.com>
In-Reply-To: <CAKwvOdmVWB7+cCbKnQ1QYUeB4+R+_ohwohFTHA3Acp--hs5_Hg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 12:48:45 -0700
Message-ID: <CABCJKucMJZqeuxmxtH6YMKvWhU7oBm+1TEeoBWCOCAC=zjeSmQ@mail.gmail.com>
Subject: Re: [RFC 2/2] Makefile.llvm: simplify LLVM build
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D39eGufJ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2f
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Mon, Mar 16, 2020 at 11:28 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> I don't think we should have to suffer at the command line for tools
> that need additional test coverage, for an out of tree patch

Fully agreed. The patch looks good to me.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucMJZqeuxmxtH6YMKvWhU7oBm%2B1TEeoBWCOCAC%3DzjeSmQ%40mail.gmail.com.
