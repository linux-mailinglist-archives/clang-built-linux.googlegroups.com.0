Return-Path: <clang-built-linux+bncBDQMHQVLY4HRBS6E3XZAKGQEGP7OH2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DDA171106
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 07:31:41 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id q128sf3325786ywb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 22:31:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582785100; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJyfCZT3qfd6EuU7p5A2BkgllCLtXaRoVE1rQyUZKfmQD9FTcMkJtvaJ8KcjPqLCBm
         xlYfHlGEqLn6xD6Gc3vYc6Lb8aNG/bkMG1bQhkELS2pyU9dWOK/REtSz6D1UE83Jg5E3
         C7d5osLzr81J8fzZMWLmr6uAvcljqUCrOXOBpb30nBabgUKQ/6yCG2hPXSwHX3/WUZpg
         jukVMxGoqqTwossU3Fe8RmnkmXawip6DvL61Uvk3KzdAnGvtdVvTNRK9XEPRZ0tPlIaM
         c8VyOss1pUrAmgmPg5Pi3rQtnEFGAz0hF3N2TqX52zbfcsqrBjIcDkQchz8IwGZjoZiQ
         OyXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=dVNXRSLlwR6Fx3nlpYwaCW9oIw0ZkPPBF3tjpNAUfFE=;
        b=sd5+y9PT+bpVrP2BOZ3ICZR5MIDOkFyw/raVzIcHgTxYik2fO6l0m5OAtmBZrYaaat
         xZO/mbq0dYNnHl4HUEo4KDE+QPWgbfMavgGnHoz/Ado13+Cz7ryCL7zqbjha0nJ76PN5
         5UpD5SnBunInwaHApzdvrLAaEi8tTcZz9Qxrt7Q4CqsDBDguYlbf1H4lqXbaP4gCX6qV
         gQhq8lGtpiRPFoYdbREWA6cxiEnRKiPEDfV8GuGw9L5NvkMtnb0U3BSQxQcegiA1tdD0
         +ihTMgfOlIcib1HanighdBS6UYL2WaF1vjlm6eLQZM+ddvQFQ5hrAJXdOvBhEjU0lasM
         wIFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hLQLTp30;
       spf=pass (google.com: domain of 3swjxxgckewqivjgngpiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--gthelen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3SWJXXgcKEWQIVJGNGPIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--gthelen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dVNXRSLlwR6Fx3nlpYwaCW9oIw0ZkPPBF3tjpNAUfFE=;
        b=E3V2lR6H7yEOYdw6Fk5ZOklHP8BKP+vNGXURCdkSWPu2UT+o/N5YkuM35UkUs/yp0U
         G5Su1EifE39/jcH7e1En7B2wQuAvX849ReShgvye0MOQx+NzJT9FSWPxrN+dicfXMfFm
         ndBbxka9pq7Gl1V5Vpb0NfO0y+fc/nFbW+NC70K1MEiNVdwRgaxS/4TWc9mULQUBdb7S
         ZWs4fmSuIvYXUrPgGXq5A7PKGKZWGv7BXkGXWqgtSmeqLKO7VITg/av/flZ6J9R5qO6I
         uEZP6WDjjlp5evl24ul53B5lzysDofWt73PAlBu/PznbDraooJpeDJS5ptUcjYCNPMFX
         UhsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dVNXRSLlwR6Fx3nlpYwaCW9oIw0ZkPPBF3tjpNAUfFE=;
        b=LWp0UMckdvbP/g5zqHyoyDpxDh1gqvdBTB22OgiL30EVDoPHzIth0QMQ59DefgggjV
         V0318dOKU+L1kjDiC/vGN7otGh2SswZAao2VbU0kC0G8/EEYNpV0tMDgwj5QMSNDPIoZ
         mh4Zop86KweSeSHcfSm2sATggZOoFPizLp/MGeIjwqFsgwFsK5kqWHa+QsZVReiiwiDM
         YGBSfMxHo3hplZqg+5yBnGGb5dwcitCokmG4P+gXZRpMHQcpQg88/dxqwNaRqBPwNH0r
         Vy37fDdYRMWBT9NckrxU4/cF1EWHVLFTASOGeBPhhuWdbDCY21R54YPqlzzbp6o1bK7u
         YfWQ==
X-Gm-Message-State: APjAAAUgHPtPNz5oQJ/ChcXyEED3y7OO36RBRSBit+i6fHYi607rmGQ/
	MtzslJVuiyaeyPCVFwP61jc=
X-Google-Smtp-Source: APXvYqwSd+Wl1ztpZqHrSo7LX4KmLwc6o+FCALrA/93rPv75KcoGqnYZaCMBqQ9a6MC0v6PJY1T9gg==
X-Received: by 2002:a25:e758:: with SMTP id e85mr2493177ybh.173.1582785100013;
        Wed, 26 Feb 2020 22:31:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dc43:: with SMTP id f64ls477144ywe.2.gmail; Wed, 26 Feb
 2020 22:31:38 -0800 (PST)
X-Received: by 2002:a81:5285:: with SMTP id g127mr1119309ywb.236.1582785098808;
        Wed, 26 Feb 2020 22:31:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582785098; cv=none;
        d=google.com; s=arc-20160816;
        b=piaxwW9JzImw6Lre5mJbnKaLHtRNGncbkRo+HgMI7WgZHeTrEYPBTu0G5LPqlNBtXx
         pP0Dx0mqlxRwoinnxYfSGZygtS2vPteU297ReyUgLEj/v9QNAuxgycMOnooym3tomgIZ
         5+bbvkMfjFf1LaZ1L+N/X66oPvOwEJqxHoDDzsZipsT+ptBJDhGr5BKh2AMJ1je0mJ+D
         hrmFfq/9JNXTFj25h1JOJUFmmuXrzHr17pwDTj1rf1KiT4xZqLieVdr8UOENKD+KF8wO
         Ym6qjsZU3ijodoB/orLsIbGYR/Dlm4Kmsts+QspSV5o/MGAS1GSKhY/mmKqeappviHtA
         ORhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=2XUDk4no3p+9z2Ml5E7VHydPfxYI6SLTr8vWXCSaN+Q=;
        b=AxrDxEerXAJ8WaqgPfLefte4dQU5mfZ2aVXz8J/CFrFo5B9Z70pf/qkiJS01oKsi9i
         S/FYUf0BKhHMR894s1XVTBO/oFtvyAj41HuI6MV8S7rmk10gwsLRCdZjs1uY1XbaeOR7
         AbRpIGNMc2FC5M8QLDeIWqAodwIGuR1iVVubWnSrRBM1+Q9L9HGcCMYgIDuHSJX5EELN
         qILk0AUTq2AFdzscygaSmeBsWKER7K2pFJBvx9XKbblNGac+LHDy0mdctQI7la5XUlJI
         e0AGH7IMM06MzphZFqrW6707qo8scTNKMNYQYOHBIkY1D7sRZfA/VilcXRFQpEPeRFaF
         ZRWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hLQLTp30;
       spf=pass (google.com: domain of 3swjxxgckewqivjgngpiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--gthelen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3SWJXXgcKEWQIVJGNGPIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--gthelen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id i200si135213ywa.3.2020.02.26.22.31.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 22:31:38 -0800 (PST)
Received-SPF: pass (google.com: domain of 3swjxxgckewqivjgngpiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--gthelen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id 71so1291892pgg.23
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 22:31:38 -0800 (PST)
X-Received: by 2002:a63:fc56:: with SMTP id r22mr2532491pgk.147.1582785097892;
 Wed, 26 Feb 2020 22:31:37 -0800 (PST)
Date: Wed, 26 Feb 2020 22:31:34 -0800
Message-Id: <20200227063134.261636-1-gthelen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH] kunit: add --make_options
From: "'Greg Thelen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Brendan Higgins <brendanhiggins@google.com>
Cc: linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Greg Thelen <gthelen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gthelen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hLQLTp30;       spf=pass
 (google.com: domain of 3swjxxgckewqivjgngpiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--gthelen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3SWJXXgcKEWQIVJGNGPIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--gthelen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Greg Thelen <gthelen@google.com>
Reply-To: Greg Thelen <gthelen@google.com>
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

The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
optional --make_options flag to kunit.py allowing for the operator to
specify extra build options.

This allows use of the clang compiler for kunit:
  tools/testing/kunit/kunit.py run --defconfig \
    --make_options CC=clang --make_options HOSTCC=clang

Signed-off-by: Greg Thelen <gthelen@google.com>
---
 tools/testing/kunit/kunit.py        | 15 +++++++++++----
 tools/testing/kunit/kunit_kernel.py | 24 ++++++++++++++----------
 2 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/tools/testing/kunit/kunit.py b/tools/testing/kunit/kunit.py
index e59eb9e7f923..34a7ec8d9594 100755
--- a/tools/testing/kunit/kunit.py
+++ b/tools/testing/kunit/kunit.py
@@ -22,7 +22,9 @@ import kunit_parser
 
 KunitResult = namedtuple('KunitResult', ['status','result'])
 
-KunitRequest = namedtuple('KunitRequest', ['raw_output','timeout', 'jobs', 'build_dir', 'defconfig'])
+KunitRequest = namedtuple('KunitRequest', ['raw_output', 'timeout', 'jobs',
+                                           'build_dir', 'defconfig',
+                                           'make_options'])
 
 class KunitStatus(Enum):
 	SUCCESS = auto()
@@ -38,7 +40,7 @@ def create_default_kunitconfig():
 def run_tests(linux: kunit_kernel.LinuxSourceTree,
 	      request: KunitRequest) -> KunitResult:
 	config_start = time.time()
-	success = linux.build_reconfig(request.build_dir)
+	success = linux.build_reconfig(request.build_dir, request.make_options)
 	config_end = time.time()
 	if not success:
 		return KunitResult(KunitStatus.CONFIG_FAILURE, 'could not configure kernel')
@@ -46,7 +48,7 @@ def run_tests(linux: kunit_kernel.LinuxSourceTree,
 	kunit_parser.print_with_timestamp('Building KUnit Kernel ...')
 
 	build_start = time.time()
-	success = linux.build_um_kernel(request.jobs, request.build_dir)
+	success = linux.build_um_kernel(request.jobs, request.build_dir, request.make_options)
 	build_end = time.time()
 	if not success:
 		return KunitResult(KunitStatus.BUILD_FAILURE, 'could not build kernel')
@@ -111,6 +113,10 @@ def main(argv, linux=None):
 				help='Uses a default .kunitconfig.',
 				action='store_true')
 
+	run_parser.add_argument('--make_options',
+				help='X=Y make option, can be repeated.',
+				action='append')
+
 	cli_args = parser.parse_args(argv)
 
 	if cli_args.subcommand == 'run':
@@ -131,7 +137,8 @@ def main(argv, linux=None):
 				       cli_args.timeout,
 				       cli_args.jobs,
 				       cli_args.build_dir,
-				       cli_args.defconfig)
+				       cli_args.defconfig,
+				       cli_args.make_options)
 		result = run_tests(linux, request)
 		if result.status != KunitStatus.SUCCESS:
 			sys.exit(1)
diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
index cc5d844ecca1..2b9b3fdbc13f 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -35,8 +35,10 @@ class LinuxSourceTreeOperations(object):
 		except subprocess.CalledProcessError as e:
 			raise ConfigError(e.output)
 
-	def make_olddefconfig(self, build_dir):
+	def make_olddefconfig(self, build_dir, make_options):
 		command = ['make', 'ARCH=um', 'olddefconfig']
+		if make_options:
+			command.extend(make_options)
 		if build_dir:
 			command += ['O=' + build_dir]
 		try:
@@ -46,8 +48,10 @@ class LinuxSourceTreeOperations(object):
 		except subprocess.CalledProcessError as e:
 			raise ConfigError(e.output)
 
-	def make(self, jobs, build_dir):
+	def make(self, jobs, build_dir, make_options):
 		command = ['make', 'ARCH=um', '--jobs=' + str(jobs)]
+		if make_options:
+			command.extend(make_options)
 		if build_dir:
 			command += ['O=' + build_dir]
 		try:
@@ -93,13 +97,13 @@ class LinuxSourceTree(object):
 			return False
 		return True
 
-	def build_config(self, build_dir):
+	def build_config(self, build_dir, make_options):
 		kconfig_path = get_kconfig_path(build_dir)
 		if build_dir and not os.path.exists(build_dir):
 			os.mkdir(build_dir)
 		self._kconfig.write_to_file(kconfig_path)
 		try:
-			self._ops.make_olddefconfig(build_dir)
+			self._ops.make_olddefconfig(build_dir, make_options)
 		except ConfigError as e:
 			logging.error(e)
 			return False
@@ -110,7 +114,7 @@ class LinuxSourceTree(object):
 			return False
 		return True
 
-	def build_reconfig(self, build_dir):
+	def build_reconfig(self, build_dir, make_options):
 		"""Creates a new .config if it is not a subset of the .kunitconfig."""
 		kconfig_path = get_kconfig_path(build_dir)
 		if os.path.exists(kconfig_path):
@@ -119,17 +123,17 @@ class LinuxSourceTree(object):
 			if not self._kconfig.is_subset_of(existing_kconfig):
 				print('Regenerating .config ...')
 				os.remove(kconfig_path)
-				return self.build_config(build_dir)
+				return self.build_config(build_dir, make_options)
 			else:
 				return True
 		else:
 			print('Generating .config ...')
-			return self.build_config(build_dir)
+			return self.build_config(build_dir, make_options)
 
-	def build_um_kernel(self, jobs, build_dir):
+	def build_um_kernel(self, jobs, build_dir, make_options):
 		try:
-			self._ops.make_olddefconfig(build_dir)
-			self._ops.make(jobs, build_dir)
+			self._ops.make_olddefconfig(build_dir, make_options)
+			self._ops.make(jobs, build_dir, make_options)
 		except (ConfigError, BuildError) as e:
 			logging.error(e)
 			return False
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227063134.261636-1-gthelen%40google.com.
