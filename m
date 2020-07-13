Return-Path: <clang-built-linux+bncBCALX3WVYQORB4GIWL4AKGQEERXTMLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEB121DF6C
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 20:14:10 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id e80sf9870523pfh.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 11:14:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594664049; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGBYY61yrivqjcEqYa2c+TEdW1B5zek2QJqP1pgu0YO+/D8JBaFqZstxBx4JUkfN7m
         KwjzKGnc494pkoTd+aMRoOulXF8ND8aEET0GTXK10O/wV1H9kuAg3I1uQB4gk5qYeNz1
         ndE4GQ33ht6bVJ9eLRJ1iBjbPqwV7qkLAPVKOxM0tuHYuRMcOT/L5DaMSIRBqiJiC3HK
         euTMCRgNCO+iyibBt5WXaN65eFi25F+ApQ7vDW2QK1x8Jn4TH1gzz7uiDL/cRG0eWwzU
         M/2KFUUANcF7bstGy/nwYxrlE21ztyp70EqeJ2tzLvSwcrG25V46ti+lpaWkic60O2/9
         l6fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:user-agent
         :message-id:in-reply-to:date:references:cc:to:from:sender
         :dkim-signature;
        bh=01BJ3wsTCvsMmi5urlzTGXa1geMPt61XbTCttnvenhw=;
        b=VZ28/mtHOpFoZC/Mt61u8zv88DOZQ3aJnEbfiGnSVLIwYmeysKJeTDSbRAqllxcWYl
         /1LTvs7Yy474d+rFHop6GGV98/GRvN89sIK0KFExmTAj9N0pLefZ0ikt3Q22uy/L+vza
         cZSM2NXSdtMAOuhGSI0w9rK7+oODJeO1+tA+cAQ+7s6GHAZJ2rE/iMb3oh++sw7cfaNJ
         mApbB/QMUueDdUezfaFVm3PRPWSkvP1bxNujkFvFKdnFg312Fj9LBCFEDx9wID7yEe2I
         H6kJjXJSOhkPFgmbUBGgdyaDHwstgm0KAuFepsZQjShtkJ8KHYWEw7d6p+5I7W+SdMCM
         A1xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:references:date:in-reply-to:message-id:user-agent
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=01BJ3wsTCvsMmi5urlzTGXa1geMPt61XbTCttnvenhw=;
        b=d7cq+U0UVTafHwYtWj1GS1CnAXwJUDy22IGT5Cgrhurt47JYMt6kTeIMi0lTCmZTCD
         hPIqcYInX8x+s+2/0RPMoLr6T6RUZRN+GDDV2URChZQbPRLqnvBl5nft0GWFC3ePj/BK
         bXdNeTAx3kHamWlbQ0Ofh5+PUm8jnT5fr18CT974fTWr9YAP58z8cnmF1FWSXxS7jSjk
         S3L6JmfPLdTOf5JRx9NrzFjhjMcBZKiXXyn9icLhL9+hQ2TqUJjrSFjs9YwIsjpV8+Uj
         fCUwnFINEg0xpo2XDlIHils68VKS9fDE1xufa2TZ5RlBrOJhfRgLtrAMNJGYPu1yup/p
         +sCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:date:in-reply-to
         :message-id:user-agent:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01BJ3wsTCvsMmi5urlzTGXa1geMPt61XbTCttnvenhw=;
        b=SNmN76/j3T0yIi7wFCPF5R0gxSwYPhRhm+JIEPcvOiGrnbkK7HZv8mjkAIJLBH0EXd
         cmwymB15yqqFiVfKwyloKZt5XkEcEl/POChOLtV5ywfo0kSh2qLYzEYbZbdTaFdgiWXH
         Je1F7bPGXV3cXSBN5HO1j10UUpHXtg0sux863Q7jOJu4NGTkzd0T9gpoBYoBcKuq00Ey
         D2cCIvj14g/lkEflpzmXTwlC1SUqCZmV0qgEwJI4KYPV7ws+D1bZCVBL8RBmqiiGat4P
         msFh8zDcywNGLr6gq4miNmwX0UXwNl5Xum/XHD+9ioD3cMLoopunG4V5A49EnA3rI3wr
         fqSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LiLCaNiftmOkiGJbAoqaivwJcychgNansN4QdecapunEKkWzw
	WaLhK0CN1YwD8YHJK3w3554=
X-Google-Smtp-Source: ABdhPJzB8a28Ko0S/Xen+nbEC6dKG8LcUuGbtjRTryfTZmazoYzkgByz4QswT/AQPzrRpZ+89PRpVA==
X-Received: by 2002:a63:c60c:: with SMTP id w12mr318002pgg.297.1594664048778;
        Mon, 13 Jul 2020 11:14:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls5642817pfc.9.gmail; Mon, 13 Jul
 2020 11:14:08 -0700 (PDT)
X-Received: by 2002:a63:144c:: with SMTP id 12mr332860pgu.189.1594664048441;
        Mon, 13 Jul 2020 11:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594664048; cv=none;
        d=google.com; s=arc-20160816;
        b=QHBe1TQ9AlNUJhgXwF1XLbBRs+LfohN32gZX+wJ99wsHNyfL6nC9CUL2zp/mmAI5GL
         UvLkgo5m8BCV4oO4K06IWe8jOlXmAey2zZDXLymfM391aKB5jsy736O7HPTJnellafG1
         AVokIAwaJE4P+r+5i7mlMXd2cLvHxuU+dbuMRxcGlVVzvLgOffNiNBi3jtCNtRYPk2pz
         NSYlfwEYrVMTqTTbWJTNwVHQYQ6ENz7o4Qqd4mms0shMImWOu4GJ5UIhqIW7lyD/Vk7b
         pseIjF9B+7IXkpup7wQJIZAemi2px+E1VTVNpRA/GjpPG6FNmrsreKDL4HmPSjGRO59Z
         xssQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:mime-version:user-agent:message-id:in-reply-to:date
         :references:cc:to:from;
        bh=Y3ujjqZ+AF2tsILaqAt0XgE3KnIQH4/8SncgGwQcSoE=;
        b=yGlz3fPuV0eValra1cwHqR0RdO2UetKGVsqABXy0n4yD2VzxBEjEdCvSg3neRYvs92
         6Oz4HNt+vgj9JwW7SfAY5gDWV1OuxLvotgFnPAddaSICYREQk/4SXGxkD+fRxCa6Jrqh
         IPnFQlAPS0/i6aVcaH9NGTz3wrBk6kR3ijNRFGyV+ZxogVEyBIVjDwtGuJzZDK0G14W3
         NCzoxO0K4UpoHm0DE4lbRldsyzB894rCjVfVXPgzI/epKgdDeSa1FNJtW3EdNx8eccm3
         8VI67kDCcrsJ8jHnrpD5oR/Xb3f3VnneSDmB/S7Sp/wmw4xHVxxylNGMeyo5Ls5Rqgrg
         GkuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) smtp.mailfrom=ebiederm@xmission.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=xmission.com
Received: from out03.mta.xmission.com (out03.mta.xmission.com. [166.70.13.233])
        by gmr-mx.google.com with ESMTPS id q13si778157pfc.6.2020.07.13.11.14.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Jul 2020 11:14:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as permitted sender) client-ip=166.70.13.233;
Received: from in02.mta.xmission.com ([166.70.13.52])
	by out03.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <ebiederm@xmission.com>)
	id 1jv2xn-0007Rg-FJ; Mon, 13 Jul 2020 12:14:03 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95] helo=x220.xmission.com)
	by in02.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.87)
	(envelope-from <ebiederm@xmission.com>)
	id 1jv2xm-0007g5-AT; Mon, 13 Jul 2020 12:14:03 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alex.gaynor@gmail.com,  geofft@ldpreload.com,  jbaublitz@redhat.com,  Masahiro Yamada <masahiroy@kernel.org>,  Linus Torvalds <torvalds@linux-foundation.org>,  Greg KH <gregkh@linuxfoundation.org>,  Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,  Josh Triplett <josh@joshtriplett.org>,  Steven Rostedt <rostedt@goodmis.org>,  LKML <linux-kernel@vger.kernel.org>,  clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
Date: Mon, 13 Jul 2020 13:11:13 -0500
In-Reply-To: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
	(Nick Desaulniers's message of "Thu, 9 Jul 2020 11:41:47 -0700")
Message-ID: <875zarb7zy.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-XM-SPF: eid=1jv2xm-0007g5-AT;;;mid=<875zarb7zy.fsf@x220.int.ebiederm.org>;;;hst=in02.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1+fZqLDEdkWFk+UGPM1iZj0UVDopGAeX9M=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
	DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG autolearn=disabled
	version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	*  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
	* -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
	*      [sa06 0; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: ; sa06 0; Body=1 Fuz1=1 Fuz2=1
X-Spam-Combo: ;Nick Desaulniers <ndesaulniers@google.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 770 ms - load_scoreonly_sql: 0.03 (0.0%),
	signal_user_changed: 11 (1.4%), b_tie_ro: 9 (1.2%), parse: 0.92 (0.1%),
	 extract_message_metadata: 12 (1.5%), get_uri_detail_list: 1.33 (0.2%),
	 tests_pri_-1000: 5 (0.7%), tests_pri_-950: 1.49 (0.2%),
	tests_pri_-900: 1.22 (0.2%), tests_pri_-90: 295 (38.3%), check_bayes:
	286 (37.2%), b_tokenize: 7 (0.9%), b_tok_get_all: 158 (20.5%),
	b_comp_prob: 2.3 (0.3%), b_tok_touch_all: 116 (15.0%), b_finish: 0.80
	(0.1%), tests_pri_0: 431 (55.9%), check_dkim_signature: 0.50 (0.1%),
	check_dkim_adsp: 2.2 (0.3%), poll_dns_idle: 0.63 (0.1%), tests_pri_10:
	2.3 (0.3%), tests_pri_500: 8 (1.0%), rewrite_mail: 0.00 (0.0%)
Subject: Re: Linux kernel in-tree Rust support
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-Original-Sender: ebiederm@xmission.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ebiederm@xmission.com designates 166.70.13.233 as
 permitted sender) smtp.mailfrom=ebiederm@xmission.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=xmission.com
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

Nick Desaulniers <ndesaulniers@google.com> writes:

> Hello folks,
> I'm working on putting together an LLVM "Micro Conference" for the
> upcoming Linux Plumbers Conf
> (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> solidified yet, but I would really like to run a session on support
> for Rust "in tree."  I suspect we could cover technical aspects of
> what that might look like (I have a prototype of that, was trivial to
> wire up KBuild support), but also a larger question of "should we do
> this?" or "how might we place limits on where this can be used?"
>
> Question to folks explicitly in To:, are you planning on attending plumbers?
>
> If so, would this be an interesting topic that you'd participate in?

I have two big concerns about actually using rust.

1) How large is the rust language support, and will each rust module
   need to duplicate it.  I seem to remember someone mentioning it is
   noticable in size.

2) What is rust usable for?  The rust type system will not admit
   doubly linked lists (or anything where two pointers point at the
   same memory) unless you are using an unsafe block.

   Now maybe all of that can be wrapped up in libraries written in
   C that Rust can just call, so rust might be useful for building
   drivers.

   What I am certain of is that in the core kernel where I tend to spend
   my time not being able to use doubly linked lists looks like a
   non-starter.

Eric


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/875zarb7zy.fsf%40x220.int.ebiederm.org.
