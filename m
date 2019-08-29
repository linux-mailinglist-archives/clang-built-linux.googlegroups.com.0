Return-Path: <clang-built-linux+bncBCNODNHUQUJBBQMFT3VQKGQEPN6MN3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CF3A12CC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:46:10 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 191sf1830806pfy.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567064769; cv=pass;
        d=google.com; s=arc-20160816;
        b=XRv/xX5wzhp6X6ylMTT3Ym4raZXXquGgSjWQgtFQ0xVbODAOhnMp8SCbWK2dFz93CM
         mVD1b+Sfjv3e+90iuiQYj4vcmeWyoPNy4Mdn9jGD75OEP6B0BlkGXi7V5llJxOrhFJEt
         udAuVm7AjtAjgBu5zYUlSe4SVosMqOzzy/STygffsUw7oaWoMdMSOlYHc/dbkRNOfFq8
         CF9cpqXM5b1RPdtQnOjY2qeOQLHpXo3R0tqhBex2hwK0115SPs15/rUIYjZswChWhD+c
         Rr4JtOp6dqmIhp/sAl5O0uilshgx3mA0hanPpa02R28T3sF6cRTmzVW7ozED9Iic4bzz
         lVjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=N90zOTMY5p5C1bFR4l6DfTPSMC6OPSCba+RDFGE9VdI=;
        b=Lpe7gEiMA7f5s9wpS2/b2auKqjlaN3S0SmPLaVGr9ID+uXva3pa5a1dFIoU9hA9HOQ
         ehD617vaEg7euWFrF7bZ3Kd4GoxpmRXg/FCnlvlvolEAgXgaCn3Q5bbDUaRmiMi0WDfP
         HBT6QJRvUlt5YEf7SN3FmHdo2ccg31DDfO/usWRtYjqVzZE/hCUswl6xe6kFgJ7DPCoh
         ii+7fzRB9D6XPey23ye/pNcvan3Kc9tF09AysxGYHb7zF42N4QZVerTCLe5NKRDHYGlD
         ucZzG+ZhWtW1UOWWLH2R63meJDRMDXKZ8Ffv3Z0VnnfKu/PCTvt7Ko5HIpKUVvH7IVvX
         yM6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BlBlZcZo;
       spf=pass (google.com: domain of 3wijnxqkkafufxexixax73bb381.zb9@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3wIJnXQkKAFUFxExIxAx73BB381.zB9@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=N90zOTMY5p5C1bFR4l6DfTPSMC6OPSCba+RDFGE9VdI=;
        b=jZtwquUwd0GIZlySzerE9kEvZdBVJhiWB47o2INyzEqV6rg6gdsxFobsx0OuY1Eqn5
         06e6RLUwg9M4I8JzEzoKjktNdPRjQviExZv7Tn2q3f7zpWk30+3wvAonoKdaT59fA2fD
         Ncrk/3g7tdH+jkvRVp4jcd4Z4y+RvMazBMVCzwYE/3b1QcoXo5Ic8BC02JLzt3cf4A4j
         B8K6ttDVKyG9cfnq6rfQ+VJ33JTHwy88AXkuPiEiOdXatNARAdfAZN/wS3ymfJtS97eL
         b5odWd5UGZzX9aPKrMX8v41SSfZFPV6e0VI/wJaa3/0La3C24Hv/bHtH8ejz39ChZtfY
         GnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N90zOTMY5p5C1bFR4l6DfTPSMC6OPSCba+RDFGE9VdI=;
        b=cVUwU5EtFNvMFRHKkzu8BDdOfNRyo2At8FsQI3bxltOtkF3uoirRkU3LiX9wCy03NW
         ZfgNz+huxhTiTe21oBnQ8356gr+8VYmNWTz3mJlpOCIdh2UqQo8IPkFzzPDgLLEqnYbW
         p0Ztxd/JWpWWXB2SijoPXPahlE4vzsMpu/jZ33JniuSb/wO8j02epqZRza0W4ymTdxKO
         /ZYNp+b+NwjuZWdkBAafWC8bxKNjd2vYeaJtFgoiiom+S4M/pLzJ+4GOQ6kM2kQ+Sy6u
         qFzECvgOUcApF0thm5FJ9a2p/XSueqj6aTSl2JLtXR/X6KIxC8ZabKhh4kO6j0+vD4vO
         Ruqg==
X-Gm-Message-State: APjAAAUXW0H1Z6eUkiFIPvGWCTW5A41KKWd91DkwJJ+GbfGYw0vfq5xY
	bxuOJ38p7SDIm2KB0CRA2eg=
X-Google-Smtp-Source: APXvYqzY7azuOyzZ0LpEZ8pIf/Dv2smj6iYKWOiGeWfZrYZerFy1tJwAS6mxFd/db28NouEA1bWz/Q==
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr9288147pfd.109.1567064769374;
        Thu, 29 Aug 2019 00:46:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:90c5:: with SMTP id k5ls638133pfk.12.gmail; Thu, 29 Aug
 2019 00:46:09 -0700 (PDT)
X-Received: by 2002:a62:1a45:: with SMTP id a66mr9920619pfa.142.1567064769124;
        Thu, 29 Aug 2019 00:46:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567064769; cv=none;
        d=google.com; s=arc-20160816;
        b=o3Z/Dt7uOZ/Gf1zAGerVwTSiAyLkEvL/AYafkuueXmKsA2FjqlY+N8DeWO6jkKEQW5
         uHmHP8mtcI8/PSNf0S02IxBXfkpYG9+CnOg738gc7bfyM4JTRLJmAtzqt5Ga0AW9li0l
         ho2wZqUFYIEuDNrZZLGq6ZuHR6s1e2xOCJ5Am/YcnzWuUpHsUHpupZ0B2IoqXE7wqkxp
         hqcxmmZTYCcnk4nXWHorqj+u6h/G8yIUBNTLsAs/Z5temqxUdR3kGuJnROvGfNwJgsMM
         oYGKaIdDYdbQXbZ5WqBEDJec6UqHZ9XxUb2dgBOSJq3Jq1olnggKPh5wSSq0O3dG11A3
         VAfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=W1PmjVL/6s5ZXXFzVRoWXIYsoDfmFEis3kh7AY5/b/U=;
        b=RRmwVOBPPoVP1OfOnT3Zc0+sfo4gc7lltjSiqqx7sm79KvqqJpzvwuyRoG0E4679Y8
         FYTdijOqGlzzY4fqZqJ3WTf+Krq/hzHo3ln0Z5u5OYGv0plTRfLlTuhGdNw58ae7KLyQ
         XBsHPus0G0sEDf8CwQFH9amYpsTwowOsp2u4GUW71Kn3Vjn5q2h9Cc9LNWP72/2MCxCs
         mcNxkaKS9j4OsM7Jw5oWxMXN+QJm7fLDokcHipodkeewn46ct9xzXSgngSL5GMzEPPu7
         4Xf4jjYOQckQeJfqT9Ymv2CSVlt/5QUrxsIL761bfYoCQgWVXjQko+L+Cq+J9xEajfvY
         L/Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BlBlZcZo;
       spf=pass (google.com: domain of 3wijnxqkkafufxexixax73bb381.zb9@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3wIJnXQkKAFUFxExIxAx73BB381.zB9@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id i11si94626pju.1.2019.08.29.00.46.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:46:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wijnxqkkafufxexixax73bb381.zb9@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id w5so1510331pgs.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:46:09 -0700 (PDT)
X-Received: by 2002:a63:6901:: with SMTP id e1mr6839120pgc.390.1567064768278;
 Thu, 29 Aug 2019 00:46:08 -0700 (PDT)
Date: Thu, 29 Aug 2019 00:45:56 -0700
Message-Id: <20190829074603.70424-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 0/7] Solve postboot supplier cleanup and optimize probe ordering
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BlBlZcZo;       spf=pass
 (google.com: domain of 3wijnxqkkafufxexixax73bb381.zb9@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3wIJnXQkKAFUFxExIxAx73BB381.zB9@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

Add device-links to track functional dependencies between devices
after they are created (but before they are probed) by looking at
their common DT bindings like clocks, interconnects, etc.

Having functional dependencies automatically added before the devices
are probed, provides the following benefits:

- Optimizes device probe order and avoids the useless work of
  attempting probes of devices that will not probe successfully
  (because their suppliers aren't present or haven't probed yet).

  For example, in a commonly available mobile SoC, registering just
  one consumer device's driver at an initcall level earlier than the
  supplier device's driver causes 11 failed probe attempts before the
  consumer device probes successfully. This was with a kernel with all
  the drivers statically compiled in. This problem gets a lot worse if
  all the drivers are loaded as modules without direct symbol
  dependencies.

- Supplier devices like clock providers, interconnect providers, etc
  need to keep the resources they provide active and at a particular
  state(s) during boot up even if their current set of consumers don't
  request the resource to be active. This is because the rest of the
  consumers might not have probed yet and turning off the resource
  before all the consumers have probed could lead to a hang or
  undesired user experience.

  Some frameworks (Eg: regulator) handle this today by turning off
  "unused" resources at late_initcall_sync and hoping all the devices
  have probed by then. This is not a valid assumption for systems with
  loadable modules. Other frameworks (Eg: clock) just don't handle
  this due to the lack of a clear signal for when they can turn off
  resources. This leads to downstream hacks to handle cases like this
  that can easily be solved in the upstream kernel.

  By linking devices before they are probed, we give suppliers a clear
  count of the number of dependent consumers. Once all of the
  consumers are active, the suppliers can turn off the unused
  resources without making assumptions about the number of consumers.

By default we just add device-links to track "driver presence" (probe
succeeded) of the supplier device. If any other functionality provided
by device-links are needed, it is left to the consumer/supplier
devices to change the link when they probe.

v1 -> v2:
- Drop patch to speed up of_find_device_by_node()
- Drop depends-on property and use existing bindings

v2 -> v3:
- Refactor the code to have driver core initiate the linking of devs
- Have driver core link consumers to supplier before it's probed
- Add support for drivers to edit the device links before probing

v3 -> v4:
- Tested edit_links() on system with cyclic dependency. Works.
- Added some checks to make sure device link isn't attempted from
  parent device node to child device node.
- Added way to pause/resume sync_state callbacks across
  of_platform_populate().
- Recursively parse DT node to create device links from parent to
  suppliers of parent and all child nodes.

v4 -> v5:
- Fixed copy-pasta bugs with linked list handling
- Walk up the phandle reference till I find an actual device (needed
  for regulators to work)
- Added support for linking devices from regulator DT bindings
- Tested the whole series again to make sure cyclic dependencies are
  broken with edit_links() and regulator links are created properly.

v5 -> v6:
- Split, squashed and reordered some of the patches.
- Refactored the device linking code to follow the same code pattern for
  any property.

v6 -> v7:
- No functional changes.
- Renamed i to index
- Added comment to clarify not having to check property name for every
  index
- Added "matched" variable to clarify code. No functional change.
- Added comments to include/linux/device.h for add_links()

v7 -> v8:
- Rebased on top of linux-next to handle device link changes in [1]

v8 -> v9:
- Fixed kbuild test bot reported errors (docs and const)

v9->v10:
- Changes made based on reviews on LKML [2] and discussions at ELC [3]
- Dropped the edit_links() patch
- Dropped the patch that skips linking for default bus nodes
- 1/7: Changed from bus.add_links() to fwnode.ops.add_links() 
- 1/7: Update device link doc
- 1/7: Lots of comments/fn doc updates
- 1/7: Renamed device_link_check_waiting_consumers() to
  device_link_add_missing_supplier_links()
- 2/7: Moved DT parsing/linking code from of/platform.c to of/property.c
- 2/7: Lots of comments/fn doc updates
- 2/7: Returned errors for all error cases in of_link_to_phandle()
- 2/7: Some minor code refactor to remove "bool done"
- 2/7: Added debug messages when links not created due permanent errors
- 3/7: Minor comments update
- Added 2 new patches 6/7 and 7/7 to handle cyclic dependencies using
  depends-on

[1] - https://lore.kernel.org/lkml/2305283.AStDPdUUnE@kreacher/
[2] - https://lore.kernel.org/lkml/20190724001100.133423-2-saravanak@google.com/
[3] - https://lore.kernel.org/lkml/CAGETcx_pSnC_2D7ufLRyfE3b8uRc814XEf8zu+SpNtT7_Z8NLg@mail.gmail.com/

-Saravana

Saravana Kannan (7):
  driver core: Add support for linking devices during device addition
  of: property: Add functional dependency link from DT bindings
  driver core: Add sync_state driver/bus callback
  of/platform: Pause/resume sync state during init and
    of_platform_populate()
  of: property: Create device links for all child-supplier depencencies
  dt-bindings: Add depends-on property to break cyclic inferred
    dependencies
  of: property: Add "depends-on" parsing support to
    of_fwnode_add_links()

 .../admin-guide/kernel-parameters.rst         |   1 +
 .../admin-guide/kernel-parameters.txt         |   6 +
 .../devicetree/bindings/depends-on.txt        |  46 ++++
 Documentation/driver-api/device_link.rst      |   3 +-
 drivers/base/core.c                           | 154 +++++++++++
 drivers/of/platform.c                         |  12 +
 drivers/of/property.c                         | 258 ++++++++++++++++++
 include/linux/device.h                        |  26 ++
 include/linux/fwnode.h                        |  17 ++
 9 files changed, 522 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/depends-on.txt

-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829074603.70424-1-saravanak%40google.com.
