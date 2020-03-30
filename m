Return-Path: <clang-built-linux+bncBC47TRXEZUKBBZNJQ32AKGQEGTMZZEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B7719749F
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 08:42:47 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id q15sf14135350pgb.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 23:42:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585550566; cv=pass;
        d=google.com; s=arc-20160816;
        b=ub+fRokWEaEIY0IaetioW6mf6yMMFqEDZXiOQpVp6JulV29r70SACbagowmqMOWa3H
         MMX+MfSgG451XEoAweOO4V4VmDr+Wd7e/TXjv0dHuxZ/DbJUtPWEJZo32O4U1SFeyxX4
         734YK588L6DALY/8U1aqU/2bNeGsqYD3TxW1jm+kHh6xOIdF4Rqj2cqHd7LMoLLq9PN6
         fw4vmXPsXhI3tEtUTssRK7zcD53QXfz43ESTozRbGgP6KiTWTptoVrnoQ3kG/5vd4Ohx
         /991VTMIDGr31aJNt4/z0vATUQ6C65IKMEC1sy0WOE8YBOwxz05UlSN15VjnyrojTdiz
         vHQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qaHhaxN9xhy2qkDhRxa63TPEFSxY/t5fMd7KpXbWn9s=;
        b=dLBzZhlev/dMAtsr5+hysxSzMVPu2UOlqQmE4011j2J0qCiGSkfRuYa1jwm4SPm7sf
         T9KrNXwMXe4lEOk9665WZAjtC18nECpiKfkFHq0Db4T9Htuyq7f86QDEp07oecJSComF
         6brheqBySkjVTZT05iYlcoHDWBTwQRx98GkAdTQmgVaz8k35/G+I0SyVu/EhslWJHKSG
         1j6b4q87hK1Dwvq0W1/lJJQA2JFxLLswLgNUi0zJGBA+F4FABmvH6CsNh8KffZzSVAYj
         Fvbx0owmGZw2xbAEvxwJfxz/UCbk1NHdqLrhhGAb/ew3+B3ict54nBs7mzR6UvBLHbb4
         0tKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c0AtaP+c;
       spf=pass (google.com: domain of 35jsbxgckeq8r396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=35JSBXgcKEQ8r396qt8v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qaHhaxN9xhy2qkDhRxa63TPEFSxY/t5fMd7KpXbWn9s=;
        b=lGmuRh4wO85MT5gkAPdqrNNS3HjiPovOSJXXyvcMdGLI/42jBJpa+bzBnvWXxO3F7F
         fHcjOgvvjo0xuidqL5lr8jJyqq2u4OfMLv8h2ZMmSG3kwoHB6vHEHalXwPrjI4z2sF5j
         DDIrE/Ju2y7zIJHfQqraTJw5jkXoZJzsMpAFicg1uE8KzePPnih65rLfQvSEEp9GBSg1
         KLZ63wjoEs14ffJqu2KfqMUte0UoHKp3bvz2+yIMLdUkyMtXKtI1VbEYVdDQTcriubEG
         legu7TC7/LuW2+3ldLVuFDp7P8RjwySWf5h9vBYuHaJrkLvtGE6HmLkZrtVczdZOxu+m
         ML9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qaHhaxN9xhy2qkDhRxa63TPEFSxY/t5fMd7KpXbWn9s=;
        b=I6Dws6Rw8vc5TpidMwZ5U2LOTZXzhbnuIbBwhl6Z/fstXzXhh/nM5ZnGlFmr5GRqYG
         5zSCH2/ssFNoCvMPZBP7iL9SFZG5w8iS86kUtZTpFMaBTP3E6fK8ByxH6AnhOnBdd3ka
         7t/4Zqqi1s92leD0vuEHrPTe9dbu1muLVXY7BNdNBqRB5ZTP63piQnjWFgFexQz6SKLX
         m1nQfWS9T0GjqcbGgTya4ZSfvIM85Z5LzIzigC9Yhmz2W1q044zV3kfLMyMny63pzDWe
         6JFFWF33emYHVVqa5wiHfjlNAo6bRfIJLbA0GskvMH0r1NSZoI3c/k5bp+t+8jLyVhI7
         micw==
X-Gm-Message-State: ANhLgQ0wjSC6h+doiSjxvPtQWlGDwVA6WirXMicx5/LVY/fTheKazlub
	eiQsniu9WgWkk2QIWswP6o0=
X-Google-Smtp-Source: ADFU+vuKjsmcy58+XD54CgSym3ms+TvCRRZ8fswyRiAMmX+2+JIwAqofZ7IhzpP1CSryaw4EvJPtzw==
X-Received: by 2002:a62:6244:: with SMTP id w65mr11759199pfb.89.1585550565846;
        Sun, 29 Mar 2020 23:42:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8c0e:: with SMTP id m14ls11390724pfd.8.gmail; Sun, 29
 Mar 2020 23:42:45 -0700 (PDT)
X-Received: by 2002:a65:64cb:: with SMTP id t11mr11892777pgv.62.1585550565449;
        Sun, 29 Mar 2020 23:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585550565; cv=none;
        d=google.com; s=arc-20160816;
        b=NmajMu3dvROEhcePGqTq7h4eWUJ7CtIG4jT5X7UJU6Tg9jUHqFSo8HEcTgyk74f8i1
         5jOVIifyExrixzLXtXtHWHF7EXUonjttNnxv/QJZERnn41TGneDqdH/ez7kcFkAyaxjz
         yXMBOYNpJ3FEzRmPXiA4iDT1c8GuJEhyNhGsiKHDecHHp+kct+woeBDsySH1aGMAea4Q
         SqwjUyngiM1H311G3ZTqsTeH7HjoiBlw2fs7VsC5e334TUyapfWZJEwkQy5XvDgvurFW
         lw91X/MJRszihazdpj9peUx4uRJydY+nPTSop6RfU7F5Kh1T/y0cqGWkd2cqB61TObh+
         tXgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=SgUhaM94KxHd0Ro08h1q71zQtInjXYe3MISrs1wOyi4=;
        b=xzvJTdMPyl8kIYyO8bDIU1FgSa6p8fr9pRrozM5HjHCWXu5TCiYEzNGTvjquPDJViw
         V3SF1p3yG7KPEA1G5bfSDRDmQjZ95oDeDUYE0355T/6dY7dWUOkR8pRMFBxs6kQa5sZD
         YvK1ptEfn9FAun1QHgb/a6vlxk26Vv3sNlCMusmKR/mhtr6V3APfaWPmLDYwO4GkDGQs
         fq08YDpbTRP0xFmK5sO+wAtYXE0w75AzWKA2FIH39LFCk6BXCO6DqAcWYuyTAcZLyknK
         2gKbnhpLcZrJTEZSszrDP1aTeA9++diw1Euu0XsVLS5yUVxg97MCWcd6+f9O0AXkpNDh
         3CNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c0AtaP+c;
       spf=pass (google.com: domain of 35jsbxgckeq8r396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=35JSBXgcKEQ8r396qt8v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x949.google.com (mail-ua1-x949.google.com. [2607:f8b0:4864:20::949])
        by gmr-mx.google.com with ESMTPS id c125si770973pga.5.2020.03.29.23.42.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 23:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35jsbxgckeq8r396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) client-ip=2607:f8b0:4864:20::949;
Received: by mail-ua1-x949.google.com with SMTP id o32so4182808uae.0
        for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 23:42:45 -0700 (PDT)
X-Received: by 2002:a1f:d841:: with SMTP id p62mr6499884vkg.13.1585550564486;
 Sun, 29 Mar 2020 23:42:44 -0700 (PDT)
Date: Mon, 30 Mar 2020 08:42:30 +0200
In-Reply-To: <20200327100801.161671-1-courbet@google.com>
Message-Id: <20200330064233.74407-1-courbet@google.com>
Mime-Version: 1.0
References: <20200327100801.161671-1-courbet@google.com>
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: [PATCH v1] powerpc: Make setjmp/longjump signature standard
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Clement Courbet <courbet@google.com>, Allison Randal <allison@lohutok.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c0AtaP+c;       spf=pass
 (google.com: domain of 35jsbxgckeq8r396qt8v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--courbet.bounces.google.com
 designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=35JSBXgcKEQ8r396qt8v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

Thanks you all for the comments. Everything addressed, plus the array vs
pointer suggestion from Segher Boessenkool on the other thread, which
is only cosmetic and does not change anything wrt behaviour.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330064233.74407-1-courbet%40google.com.
