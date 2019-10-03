Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBFOX23WAKGQEHI2FLYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE39C997B
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 10:04:39 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id w16sf3896460ioc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 01:04:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570089878; cv=pass;
        d=google.com; s=arc-20160816;
        b=atQexn1mBMdfj50gMcxceEMSvWVYw115tArbjUKd6Vsks23Am8iiZnjNUCde5Fqf+/
         cJARMPs+MrZPhbd4xrBJdQnmWQ67AX/jrtC41K6cWMO4eP2PM4a/ywVi3psNu8pLAPlG
         6Lx5tQ1GeAMQ7hYmA1VMYLct7bcP8vQFlCXewuVoNSpw29R+oeMcm4DSWZ+UEsvjetWR
         B5DV4ygSx4C+GmOBNWrQtgMi7ykVBS/DkEyh6U7oIoIYyq6vrfiG6V64Gyz/XqjH8Tim
         r6VRzDWNgDdwIweWnpobcklDTj9DH2JQHAcFUSB9oJxYbUn+unWB5uVz+lCOQ0wf1uDS
         +bTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :date:from:cc:to:subject:sender:dkim-signature;
        bh=SW3yb+9x9PwYFaVG//7ka+cKGknD6hQKhRcSf1a3i3E=;
        b=o8BEKHuMvWjponnj2BCskUOKSUrMbGge5OXPagYDzlGnxNh75muTveGFwCDLZBPOPy
         4DOuLhOjN7mN+FLNLFBiTB5vXhVHGh38bzv+mFNLs0uKLuH+nbN70DqUBzM4PcKwaTvU
         HywpgxQ8RTVLj2BOhFgCucHDGCbIofjri8eyH4lPVUzNvWGAnhnnrvnoVEiU3HwHSA7g
         OOhG8DnUrXrmUsm7svoaWP7e5+qq4EuBY1pF5u9db5O2NzLTu5Yl4QczGx10UTNsSyRC
         4sW7YujX5rZvqe3t59ILlarrdbik7u4R7960/oeadbqn3zjmhCLXa1dCkEbMVHSzt6zW
         CewQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JMMMvsjg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SW3yb+9x9PwYFaVG//7ka+cKGknD6hQKhRcSf1a3i3E=;
        b=ARyenx3LpSqC+LkyNCPvDwZUWCsDLDivO1GBzDL0ezFfsrlL4gGUWXi2PbWhPXDDKW
         SqVizGNsPoDSlHukRL+ooxpoeohuq1q/8VAZUxUYPMkPUCgo7RMEoaBWF8Z1OqahRp+o
         fTbmTlTfZTADN81Ps3F/99L4W3dU42sMToU5LWcsfYjHamg0lswtSMaNESmoTIgE29rV
         XEMoxyMS6jf4l0iIJKZRZZMXor7/JDGv2BCCRoxd6wuunitQgnW7ie7jn1+IA98M/zYv
         zQ1Idz0J33CJW2kvfyzVbLdTflydFhEIiUoSw9nGVr+SnVgyRiZSZWbUEDDooiLvvhc1
         ZtQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SW3yb+9x9PwYFaVG//7ka+cKGknD6hQKhRcSf1a3i3E=;
        b=TJh2rD7BMfqG8eyfYxgAUh+WiuGe7L0YZ7xBK2xzK1Kx5MoRCP/Ol8b+niWudRK922
         vLzlJQWtlEbXvyCY13zbuTYwJ7/TvWC+30npsGVE3JgbVXhoFOpTwAqCAZr/mdQ3sbrW
         stbU8vBOeTU7h/TMBJbDm+/Lm0O33f18/FiXJTOxua1F8wxo2jLRzYde14BP14vG/HhP
         g2cThwjTZAoUzpRSKLRT716KzezXj3/D0lMbyxZ9czBE6DHlq9mkX5yI0mtjyCGdDWla
         z8WppsAlqeobEaC8ITE1WWSkOIH8vv7bLiFsBJWKhgmTGdWdYhNzb/pIjb/81QgbuMEZ
         y58g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVOryFRhbr5Fcb1iBXhlnFjrDa0qeExYTJ1sGSvwj5CTpHOSS9R
	6QJCm+kSIcXUxjkZX4v+OiU=
X-Google-Smtp-Source: APXvYqxX0KqnY9PDB5EjvZHhXq6f0xsR8cz/w6NSAAlmRHkfVnP/WGw0AmjLCwYV/vCL+Me7HCpnnQ==
X-Received: by 2002:a05:6e02:882:: with SMTP id z2mr8893746ils.131.1570089877896;
        Thu, 03 Oct 2019 01:04:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3b84:: with SMTP id i126ls1082272ioa.0.gmail; Thu, 03
 Oct 2019 01:04:37 -0700 (PDT)
X-Received: by 2002:a6b:440a:: with SMTP id r10mr7233497ioa.31.1570089877509;
        Thu, 03 Oct 2019 01:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570089877; cv=none;
        d=google.com; s=arc-20160816;
        b=XwAXEzOcIHGYFgLrRHjudim17h16N07AOQ2Qpn9zEZNSynjxMn0k9Pn96V97Pv3xeI
         qMirUOEWcaC/GcxbHHAcfxW5/ENYqw8jPn5rI0focHtcM+CgdbhylvHmeeGXBfQbb+Qn
         z8knrM9cbq16k7seyfqTs62viGPptDNYda1WdHBvnFo4/Awr4u01WktNY529Y1fBK/fr
         ahi8k950aVYoGSeiQ6YLwpwUXBQvC7FfSMjDp5ML+Eq8laTzhBH0MkvpsHs71WpNXw+h
         S10kyEKWfP7rQX9AVeTQqCq40P69dlvZTXov+iEon7qhIVX8D8SzHb3vHNMVE597H2hc
         lUug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=64/1Cifa1czv7j9wR6YZ590RmcLgwesKPb672BrdRnQ=;
        b=iEPdLTYPgk0ScDcnbp9isYg7mwZy3snt237OCiNxeWd6k/GgmBJUDifMXV0bjJ75p+
         6yNt7umDPG9tRT2/IFnWHMKSGt5sKZIHdxXkzMzzzAOw+GcXylWsfug3apqvGiaJiZHM
         xdU9nDG+3dG2HZsVL0KNe566inIWPY1QXIFbGl3oCHxQ02OiCodK2UIP1VmSevBwDQVT
         m59l47GSIir6Yxvopqn4dZKATtJt11ezeD59NgV9K8eNJoM6TTr/xzHQ2izrEF/o2itW
         NDHHj//nKispuOCQntkjiLEJRaUUWxNWeSbDK/j6qa/dSGNSxbd4IogYDfpkacEpZ05X
         FeRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JMMMvsjg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h14si113442ilc.0.2019.10.03.01.04.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 01:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6E169222C2;
	Thu,  3 Oct 2019 08:04:36 +0000 (UTC)
Subject: Patch "x86/retpolines: Fix up backport of a9d57ef15cbe" has been added to the 4.14-stable tree
To: clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,natechancellor@gmail.com,sashal@kernel.org,x86@kernel.org
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 03 Oct 2019 10:04:15 +0200
In-Reply-To: <20190929183206.922721-1-natechancellor@gmail.com>
Message-ID: <157008985523444@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JMMMvsjg;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    x86/retpolines: Fix up backport of a9d57ef15cbe

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     x86-retpolines-fix-up-backport-of-a9d57ef15cbe.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From natechancellor@gmail.com  Thu Oct  3 09:54:59 2019
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Sun, 29 Sep 2019 11:32:06 -0700
Subject: x86/retpolines: Fix up backport of a9d57ef15cbe
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org, x86@kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
Message-ID: <20190929183206.922721-1-natechancellor@gmail.com>

From: Nathan Chancellor <natechancellor@gmail.com>

Commit a9d57ef15cbe ("x86/retpolines: Disable switch jump tables when
retpolines are enabled") added -fno-jump-tables to workaround a GCC issue
while deliberately avoiding adding this flag when CONFIG_CC_IS_CLANG is
set, which is defined by the kconfig system when CC=clang is provided.

However, this symbol was added in 4.18 in commit 469cb7376c06 ("kconfig:
add CC_IS_CLANG and CLANG_VERSION") so it is always undefined in 4.14,
meaning -fno-jump-tables gets added when using Clang.

Fix this up by using the equivalent $(cc-name) comparison, which matches
what upstream did until commit 076f421da5d4 ("kbuild: replace cc-name
test with CONFIG_CC_IS_CLANG").

Fixes: e28951100515 ("x86/retpolines: Disable switch jump tables when retpolines are enabled")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/x86/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -249,7 +249,7 @@ ifdef CONFIG_RETPOLINE
   # retpoline builds, however, gcc does not for x86. This has
   # only been fixed starting from gcc stable version 8.4.0 and
   # onwards, but not for older ones. See gcc bug #86952.
-  ifndef CONFIG_CC_IS_CLANG
+  ifneq ($(cc-name), clang)
     KBUILD_CFLAGS += $(call cc-option,-fno-jump-tables)
   endif
 endif


Patches currently in stable-queue which might be from natechancellor@gmail.com are

queue-4.14/x86-retpolines-fix-up-backport-of-a9d57ef15cbe.patch
queue-4.14/objtool-clobber-user-cflags-variable.patch
queue-4.14/pinctrl-sprd-use-define-directive-for-sprd_pinconf_p.patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157008985523444%40kroah.com.
