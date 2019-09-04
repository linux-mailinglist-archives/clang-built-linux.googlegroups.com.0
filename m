Return-Path: <clang-built-linux+bncBCNODNHUQUJBBBGRYDVQKGQEEEMAELY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F18A948F
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:11:33 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id h14sf5674412qkl.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:11:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567631492; cv=pass;
        d=google.com; s=arc-20160816;
        b=06tecEigdkESdNQjzu0a3hPSdDsiL3ax0hDwr3goR6ele9VapOz69TA/gGaLnXOJze
         scCD0oanXyJrNyjyHok2Cte154jxpEH6O9BZuzGa9LC9pSIXCK+SL2r5Om+oXN1olVRn
         WTt7PqzQEBcv3Lg3MaOUxsnGTQxQaukLTnLXYKZC139ZhO8gUzW8iBQh8uvxZgbGNSx3
         gPO02ymTlLu8Ok930XfFy7dvZNlSm5t8IDRj1ScWu90MJE2T9H4DfCYZFn6w3UgKhr6E
         ZZ/Pdd0XiSMbf5TIC6T1BSaIr9vylBtPwnwAA2rcK622hcsztSRSdlv64TkdmGqI/q6E
         xeTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Qx30wRyOZPX1s3PLu7S+RpcdMxWpoapLeNantwF3Fwg=;
        b=B+n/JU0tOKu3hXWCBRgh5+39aOYyP3n4Yv48eRF9eDAlX7YiHRD0FE7OKri+QVmqgc
         lRwcO14Ew1UwmEH5kmel5ISxDjBFes/XsDH71lN9d+GRqzT5cHb2s4mZ4wjTxw9EZrIc
         45jZoWVZeibWRE0G8Q6DUpkFpp5gFBnZT21FdAQkSFp0Wun90fEpQjXwvmuq9mFbIzpn
         qTNytpF/r8fmin0vtt5yRFua3YoYr1+36s8z/0W7OapjGnHtrIp3dQuvPN7vhc/6X79a
         /5kWdQNBIU2Xi1+L/yLP102dlhreAwmmfNLtwV7781Y6Njc4c4Pn0a2iuWIfvekwy1+e
         P2ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hsXuOq4U;
       spf=pass (google.com: domain of 3gihwxqkkaiu1j0j4jwjtpxxpun.lxv@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3gihwXQkKAIU1j0j4jwjtpxxpun.lxv@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Qx30wRyOZPX1s3PLu7S+RpcdMxWpoapLeNantwF3Fwg=;
        b=FFjYSYPz91geEXQX+MV/0bI0CVT/XsWIW8qMmz4fvyv3DrFGkSRMrktXHNXoyGhOyM
         lC4b/kZluo4y4lsInwusEZd6+M+FyGp/rtOcX4FiIpj8HJlluJsyGX4RLPZDfvXqPj3H
         1cW0kXqD97cfna8qjTdIHsdMmCkGQou3RYsvHnKvCXbUXzv1XRpZQt/kMm4GGSQ4Kyqx
         tj6rsZniXnPqvUlhhHaG+EKzPMrtGhkgRPDaGptdpALmL+B295fEPyqhJDbPzdbDlzG7
         20DMGYryEwsm/UFqniEOdxYRhMEZpgi9prrsSdBljViBgWnxptxF4sMw6IhCvH4y/4cI
         5lpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qx30wRyOZPX1s3PLu7S+RpcdMxWpoapLeNantwF3Fwg=;
        b=PW+l5/EK9zSTYuKhDT0COdtRbY745oFXsSYSFgf+wOz7IrDFA3Objp8Tt3qeVxrEWK
         xBAqnGZoFaQh0Ti+dWeRuxHYXcHKizrrRqBgcPlYsN35tQJu4qIiYkgkYCRjsodcJoCn
         ajWypwm5T3FaXZLUZ9QGM/pRDPKXEl+2y29YnbUmJKnaeCUWiNYBfquKEF0n4/G2GVWh
         luMBCP4ZsOFL1OjhYVfvkhEZylLUF9f954OFipeoecsT8olqWK2P4tltCHawUnJ+FleR
         wEPxOQjlWzlBGecUnvUGhMpZqghPLTmBbz+LHTJrrH60tk47u8Y6vpDvfuZWEu/W/OI9
         5igw==
X-Gm-Message-State: APjAAAXJZ40Xcad6ZxRFCeDOfxk6SajDohtLpiNa9jjmbrAzYZt7UJi4
	HDN9Jd0tw6OEE/jgOrNlNOc=
X-Google-Smtp-Source: APXvYqxiX/tWqe2As1AwQdjFGW6yzmh5VtaqUftHvM0ZBFrrIz4bsqOFP9pIhB8isLaAE5o76cJvgA==
X-Received: by 2002:ac8:3525:: with SMTP id y34mr139992qtb.140.1567631492247;
        Wed, 04 Sep 2019 14:11:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3136:: with SMTP id g51ls45124qtb.4.gmail; Wed, 04 Sep
 2019 14:11:32 -0700 (PDT)
X-Received: by 2002:ac8:6688:: with SMTP id d8mr107622qtp.25.1567631491992;
        Wed, 04 Sep 2019 14:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567631491; cv=none;
        d=google.com; s=arc-20160816;
        b=PGwY3e99Rs5E6re3dTKbcrp9lCCFbSuraUgPBifjUL8tv7XyD58nGgJahJGwZVh1m4
         fbol/th04UHrFcxDWjO6RdbpQ7b1b8c8kRcukZEtC7ieSf7MWc2hLyxYSSVtlYl2LQv1
         UQTo6c2dG7lk8vvIK40ojuFqFF9RO+htoCwreSQCE+smz9ET2ENRnV2z6oLgVBBAioM6
         r4x0QnQyYeO30/CDYxF89M2A05Svgs3VdiFpIP0AXuLYcw/HIGMBx/rHYOn8C2HX5gs5
         urCQofPyJ+vnTZn47TrEnagZLF4hVU/8cMH2BEIFzk9wYf6suj86JIG/5xq5BPRu7WrS
         g/cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=u6P0vTia2RxCdsskGV2Xe3w3VBUYzUpmbJKpNal4IZw=;
        b=X1PiD7E7fPIk2kX1RBQT46jakVz2S7zg4iY9jzWDvkGafB6hMrUkAy7T7y7fGpQX26
         t+uL67V+d5xv3VBtJdgTmlUMJMYyLPuNP0aSQkAWgShENRuwVCMRvmJEPny4md3BPX6x
         kcYGs/yfN3rVU5sUWPBdREEv/hXRn0FdnShu+ham95rYl3eV77j6zfG0JOklxpndEq74
         EVbkegl2fvs/6+Kda+8pR6mURveS9QMUm4aBwzW+ckrnh8hDwapqqoxDFQlr65IOVOfK
         D3tUwJ86iAM+8K6XrmQjejyqFNnligY56ou8B/1b2RlBpQ4ivqckJ+EG82AfF042YdmU
         nD8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hsXuOq4U;
       spf=pass (google.com: domain of 3gihwxqkkaiu1j0j4jwjtpxxpun.lxv@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3gihwXQkKAIU1j0j4jwjtpxxpun.lxv@flex--saravanak.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id l12si14070qkg.0.2019.09.04.14.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:11:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gihwxqkkaiu1j0j4jwjtpxxpun.lxv@flex--saravanak.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id h3so13919970pgc.19
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:11:31 -0700 (PDT)
X-Received: by 2002:a63:ec03:: with SMTP id j3mr111690pgh.325.1567631490651;
 Wed, 04 Sep 2019 14:11:30 -0700 (PDT)
Date: Wed,  4 Sep 2019 14:11:19 -0700
Message-Id: <20190904211126.47518-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 0/6] Solve postboot supplier cleanup and optimize probe ordering
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
 header.i=@google.com header.s=20161025 header.b=hsXuOq4U;       spf=pass
 (google.com: domain of 3gihwxqkkaiu1j0j4jwjtpxxpun.lxv@flex--saravanak.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3gihwXQkKAIU1j0j4jwjtpxxpun.lxv@flex--saravanak.bounces.google.com;
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

v10->v11:
- Dropped 6/7 and 7/7 from previous series that tried to handle cycles in DT
  dependencies. We can solve it later when we actually hit a real world issue
  in DT.
- Added a new 1/7 that shifts the numbering for the rest of the patches
- 1/7 adds a way to look up a device from a fwnode so that this series can work
  across bus and firmware types
- 3/7 removed references to platform_device from of/property.c
- 4/7 Minor variable rename
- 4/7 Defer sync_state() be default at driver core level and resume at
  late_initcall_sync(). That way, we don't depend on any specific bus types
  having to pause/resume sync_state() till late_initcall_sync()

[1] - https://lore.kernel.org/lkml/2305283.AStDPdUUnE@kreacher/
[2] - https://lore.kernel.org/lkml/20190724001100.133423-2-saravanak@google.com/
[3] - https://lore.kernel.org/lkml/CAGETcx_pSnC_2D7ufLRyfE3b8uRc814XEf8zu+SpNtT7_Z8NLg@mail.gmail.com/

-Saravana


Saravana Kannan (6):
  driver core: Add fwnode_to_dev() to look up device from fwnode
  driver core: Add support for linking devices during device addition
  of: property: Add functional dependency link from DT bindings
  driver core: Add sync_state driver/bus callback
  of/platform: Pause/resume sync state during init and
    of_platform_populate()
  of: property: Create device links for all child-supplier depencencies

 .../admin-guide/kernel-parameters.rst         |   1 +
 .../admin-guide/kernel-parameters.txt         |   6 +
 Documentation/driver-api/device_link.rst      |   3 +-
 drivers/base/core.c                           | 167 ++++++++++++
 drivers/of/platform.c                         |  12 +
 drivers/of/property.c                         | 245 ++++++++++++++++++
 include/linux/device.h                        |  26 ++
 include/linux/fwnode.h                        |  19 ++
 8 files changed, 478 insertions(+), 1 deletion(-)

-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904211126.47518-1-saravanak%40google.com.
