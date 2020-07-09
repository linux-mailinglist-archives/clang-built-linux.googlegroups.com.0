Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6GJTX4AKGQECDOYFNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB7721A72E
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 20:42:01 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id k10sf1852561ioh.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 11:42:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594320120; cv=pass;
        d=google.com; s=arc-20160816;
        b=AB/WWLpb0wp3mJIa+ozUiP8FhPgW5Iwm2hsQ69XGotvaPmFZR5FbD6mzUM/1QCSIEf
         1+XvW7kEljK7nrkBhy/F8dLQZFLyYTBh9uTxchlSkbYaV+4sVDCM0X+qaoRriULwre2N
         b/uoA/g7waMebNVf7xI4uXVJOFa4st3J6uYTJdlnKVqiV9GIlwhsFLA2k/XtOHMaEnlT
         vp3Z3WqLvtA3JUFWgh3BIvSgkQEBS1MEda+BygpTeIURd7K1ErXp3O6eHgUuHNbL2ci2
         BsBlGdkq8HC++yS9i096jeeUYhxa5R2SnmhZxPXr2B1ql++oLqN8je4Jr9H67x12nW/6
         VTuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=cJWoC1LELWklKpQa3BsofUdkz9yLQAOW+cMPbnqVoA0=;
        b=KTnLDe4d3bpiOkbCMyHML+ewVJkI7XEXZ5kAjMICh7iOAgGK4uMv+5qjJrK2ZHtf97
         wmxBlQzOPd+6C6NrFoZpGFaY0Ye8BTInfv7IuRz8zAccPdLz/3Txj6Vcde4eUpwrnwH3
         BQEG79RwbU/6/k1CYhqLi62kkUVNrjvQdiV5We+6ThQfsDdsNGtEwikbjwitVtOeD0Jj
         GypC/jnrpRiBzXeqC9U0bS2Mx8Dcbrfc2t2tSB6/Umh3hRQkOAgR1PWLEncQyZjpb9vD
         iaw9UuPbvAuUiBR+eFuO9qMAKVCUzaHLs82OpyV+0Xl2QdMlpu4V3pYI87wxyNyBJS4Z
         QSKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HfKOiwdq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cJWoC1LELWklKpQa3BsofUdkz9yLQAOW+cMPbnqVoA0=;
        b=tLbMHmvd9sFG++pk9Fvt6/uF+GRp2Hxnv7NZqOardKkhyOxGTsFv5LMkgdLs6P6rxn
         FbdahWhJtXuP+J0dY/TX1kfApSRvIcU7Q1Me9IySCngmZ6TJXLQcWlmI8AQttGkyY3HH
         iGRcFRkJ7ueVfH0FZmtWMSgW9Pa0T4R+rU9L9hAS7FREU8HqVfaxeNWLxHJyWMEIyPZ9
         dkdOlQQLwcsb9GIlYbh3LU/jmgjaL0o4i3kqHbQ18PTctL7Q1QHW0V94TqWOvgU58mqh
         lfTtiIRzb8vUifdTL3xhb6hO+8uW/qiwrJ/IcGVtqcTFLHYKHRs/VAMDF/evjj5oV3Ji
         Bp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cJWoC1LELWklKpQa3BsofUdkz9yLQAOW+cMPbnqVoA0=;
        b=ew3jzuJqspU13d90Sbxq3bpWPu0PKqPIhca45bZl6mnqgKGvJHKFDRps1c3iCwLJhD
         onkeImMz0rizftkzS3jWvYnHXUcK20AeQKxHxHawp6LDNDb9FlpygdfdH8w7ELdiPyZL
         5gw4C0C4qrQ2gtJiJSXm5wlU7hZztWRcsSPJEW4eVak1Crf7BjtqrFldwZkfNTKtkmuH
         /zZ5oGTZhL6jMPpicfHrDv/QMLpGLfjhBIqpo9vFvcHtYOblhyGUlRPI2qh0fGKlgZav
         YKhzQH14yzU3dbx/w6Vfqp5F+z8B9yyVwz5vKYoUaMZ6YeoijQXKFqZXirilnAbYHAlf
         MV2A==
X-Gm-Message-State: AOAM533Jl7V8nKPomZOt6j1PQKM93BDPiMa1UjpqA2vXq+D5PeKNsCtl
	dAZXmDGfu7/bnOOPfzOv8QQ=
X-Google-Smtp-Source: ABdhPJyq3aqM7lFwZKnFBwSu9QwtSc33ermuWInZjmq6gQNOKMjsExbkhEDGGnZZjjaP7U+w6TEhNA==
X-Received: by 2002:a92:aac8:: with SMTP id p69mr49621889ill.26.1594320120712;
        Thu, 09 Jul 2020 11:42:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:da02:: with SMTP id x2ls1164378ioj.3.gmail; Thu, 09 Jul
 2020 11:42:00 -0700 (PDT)
X-Received: by 2002:a6b:8f04:: with SMTP id r4mr43053144iod.160.1594320120380;
        Thu, 09 Jul 2020 11:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594320120; cv=none;
        d=google.com; s=arc-20160816;
        b=TszmCEpck8PQa/TTsT1AmxiXfHy9ROLH6ykcGQUsXgHttSzlDOKG4USms2NZY+MdcL
         B4kttcgHvVu5/FENX2phdym0nNk5+P+4ynXBMCgo1GMwhfFFJmQjr5wdWE9VgPWlZcmo
         R+3SxBObhEyjhk1NR7mrSRrx3GlvW1GNxThvf4lUfvZKOSHLH+/DLPBdds2xbJZhymhD
         zSzHzOSIs7GJMakyhtZfXPgu28NKQ+WuuDrrepbSWNVn5l3uAbXxlQzHOZ6cTJUKX4hC
         hD+rYAdgpo1NopIGpXs3inMyoDEp2cl9C4jRRvZfrVOPI2WytC0c9urtoDkcEzycQDSL
         Lh6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nyJ6z6/Z5uBD4mzn7e7w/X29e4m5Kuuz07q/2+OOWkI=;
        b=tMdSKckEjcOi3/pv0IJHLWKqMZNBQsSt8y8CQ00UM/2e3lxGYwou7N1J6J07hx1Gms
         CXZFATPIH7Mb+n+oDNru0/vFnvMVsh+hcPeh8xzIiaG1wp9rVBO7x3P2ngrkFtLi3SMO
         ssgvcqN9SggeAEgPekySyN3M5e0G/HLSF9uexC1Dl6Ejdt8fMsumqaNiICgeN6kdGUq7
         vdqXhfhTMDRTSP7TqYcCC5Qx7xmm9aWWu6bGWGpX1JPkxn27FPB1E2pYSHWfyibbRJ45
         kfB1VAiTWrKIzJp/gclC009kKC9OBECgT5t2njVZBHstsJ547YJj7F1QRoqt5JJEarBN
         qICw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HfKOiwdq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id b2si306280ile.1.2020.07.09.11.42.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 11:42:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id b9so1180838plx.6
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 11:42:00 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr1524895pjc.101.1594320119549;
 Thu, 09 Jul 2020 11:41:59 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jul 2020 11:41:47 -0700
Message-ID: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
Subject: Linux kernel in-tree Rust support
To: alex.gaynor@gmail.com, geofft@ldpreload.com, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg KH <gregkh@linuxfoundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HfKOiwdq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hello folks,
I'm working on putting together an LLVM "Micro Conference" for the
upcoming Linux Plumbers Conf
(https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
solidified yet, but I would really like to run a session on support
for Rust "in tree."  I suspect we could cover technical aspects of
what that might look like (I have a prototype of that, was trivial to
wire up KBuild support), but also a larger question of "should we do
this?" or "how might we place limits on where this can be used?"

Question to folks explicitly in To:, are you planning on attending plumbers?

If so, would this be an interesting topic that you'd participate in?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmuYc8rW_H4aQG4DsJzho%3DF%2Bdjd68fp7mzmBp3-wY--Uw%40mail.gmail.com.
