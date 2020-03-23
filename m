Return-Path: <clang-built-linux+bncBCA2BG6MWAHBBYUQ4TZQKGQEQOWE6VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id D573818FD3F
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 20:05:07 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id l5sf534812pjr.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:05:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584990306; cv=pass;
        d=google.com; s=arc-20160816;
        b=UU5JyLby7RYCMrrCZ6iH7+kFFPio7C7x4v57GJ9kROeNe/obepdlWVR3ZKxAsdRdcm
         LzWyAUSDkIarO6wfeHeJYneEvFuREdLYGJnkgmsCW4PcWHcpJyfd8k8b+Sl99PGThJbu
         pVpaLiHvnlNh8guBLj1iL1PnsZYQdubcZhCLTct1jhM6eBKB772yUFtiZy/RlwBlrf9a
         1ET1bH12CrsAz7HfT2u795RHyV/w75zUCykqXBcgX1dAi6kA38mtvoDrZ65AsTPII/vq
         wgupzj9liFdXDWMPmBIXUbk5h7TTCqYrOv9o+bFQNvkKnHAKwyiIWfVOShIF2dYtQayD
         lGSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=gaCFyCT4//FDdk+Sev4R4f5pFIi8ldq5MUbfx/LnSKQ=;
        b=ywagNnB+UIGHi1Qj0se5Cit3huGDwRwi/RPaVIiKiBFW6KZOsoGj9t1KK0KLIlcF7i
         khrGHqzgkAjh7fUT0NjUF6qdclGfslIS8R2mvjrM2iMok/v2rTxCBdNthIB9TBaNTDbB
         Ejvhc7IXBdkd5aeKig5NNS6Nu6ZtR23aknC/2SkxrJ2ljr5WMoBfrWdOaZ8TR/qcxCEA
         EqkhCUFtaTLeJcCKNGnvQcJJeqSrdJw5u2HpIrguqByqXgBi8M88TeLvbSXtwq5uMhC1
         LLXnhuVw0UTfLbzQDYsfDAyGC1WpSu/fSPJtbQ+CQdMPelr4eCLyUlOj2ZctNjb03XIr
         jcMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rlLq4n/m";
       spf=pass (google.com: domain of 3yqh5xg4kafat9w5vs5z0yy05ay66y3w.u64@flex--brendanhiggins.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3YQh5Xg4KAFAt9w5vs5z0yy05Ay66y3w.u64@flex--brendanhiggins.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gaCFyCT4//FDdk+Sev4R4f5pFIi8ldq5MUbfx/LnSKQ=;
        b=O1Fo0qf/q+pOxSK1kkM/WfbNGGuq8ZeLKvhny6RVn7ccH7uYq13oHPHojUNaNFfn1A
         7WYzcddy3RRFYmGCL8owxd5Vmu/+gt1KtQ3uEwt5Y1cVEUoGj7Vys6n30fVhwzdx4HQX
         T8bQXIBHPoqX83KQFhjIfzk6HL6jpTFjLcv0RcPiKpNtie01NE12ibga2eN1xvAkxTuU
         LW7e8VTU1DkN7C8J49dhJO4NLadlBG+GSVXA6Fi/QNntNN3ak8CjEMrFzfwMTWv8vUy+
         V/ESRcBdofJR9UE4waqkLoqziYQWWqYGO8A8MaqS9ckD4VF1Lgklqw7FKLyskb/dhCgy
         rtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gaCFyCT4//FDdk+Sev4R4f5pFIi8ldq5MUbfx/LnSKQ=;
        b=QOFX7ChVretu1BBKPcesm0Hgq8CcL00m56JHZ6h5TyZU7WTJHY/QCsck+D5+iULoez
         nIZFjHyadLqxceLG5Qv/ILh9ryidHnqdeR4G45EsIplH5D8JT/Q2XR0rHko9BtsiWVrb
         lQhD7stuXdC/sYFLDhsWXJcBDZY+/zyPIa+WhJWKVygEmznBApY0EiWXmBHtPwytxi1e
         iPxdlsDL4eO0IXgWvQGCO5PWNJu3nGkyplA6SHkznfoIXZrax7Mw8r6SB2SvbxIe6k8O
         /7qfjkjQoAD/MMrK4TqC6QwpE25zPoqehV8j3AdvBfWAw2St9hyeAQxMan5VDTPVSEpX
         bbKw==
X-Gm-Message-State: ANhLgQ0RjFsJ5laMG+K/c8svkSr39RH9ai92aJJhAvFD2a4j/WGLS6VN
	XLp/r6zJLtYloXAOi0IigIw=
X-Google-Smtp-Source: ADFU+vuzpIEgqpncOHEIUBnVPx6PugoR2RCCxf54D3/MT2HbnkxtbL0zx2GAThta2xHUNi0oGjdohg==
X-Received: by 2002:a63:f454:: with SMTP id p20mr23955880pgk.149.1584990306359;
        Mon, 23 Mar 2020 12:05:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls8735114pls.6.gmail; Mon, 23
 Mar 2020 12:05:05 -0700 (PDT)
X-Received: by 2002:a17:902:788e:: with SMTP id q14mr22908179pll.72.1584990305869;
        Mon, 23 Mar 2020 12:05:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584990305; cv=none;
        d=google.com; s=arc-20160816;
        b=KlQqxDyFHpyr0DHK5YXG9cwxeeoaKP4e9OOHcH9fjJBmZg2mEt54iUZc4Dk73188zF
         SCXVfTIpewu5KrloEjcnvdTzFeskllvAF9Nu8y+GHOugPy+rYEKdruwF16OswWuC0LNG
         arhnyLqzjFE8K6fYHhFG79I4Ik3yiXGPJHJac6roYb2MvTSEPEsIauh6hh7N+BO42m22
         uout1YIJW3kDRfWf8FNvl4qpFGqlF36xVKdpJ9p00i60YauMybMXavCNQpPfqHei5ooM
         IJiaPgLpPO43paNgSSlwo6Iz4unJXpKv83Bmghr43JfYhiGmcsHY556UZlBteHw3h/eF
         vZfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=62ODFo7fgtXrZQirhZFriVDxWJbpN32F85/2VefFryo=;
        b=RACQ25R1X3mfzsCUX/vJJ0hj0X14sp4Su0LRBEzMdwOPYQVtboCsnlJbIE4jyO5SNi
         I6Or7qvveF9n+qu1nGbwgE2OQBvOHgTX7GeMGzWeBhSOmdmR3NCT/cIEauQ3sLk9SkGU
         MAS1Z8v8fXYDg1VImtXFCrBloZ4+KcY1EhCUnbhTGRv9iEkZLWB8OUYIcyvUqKVj37dP
         zyTlUk0uUUwXNJBpgwSzrEgGB2rylEJSkJ57omKhfBZR3fqsFUKwe2aTVLYmXgoub41j
         prmpbuYQIy+XaZi79qUPgGQFc6AJvdw2Wg3rJu052qxsxa5ilGnEB160ZJOlhol/NeXv
         Sbdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rlLq4n/m";
       spf=pass (google.com: domain of 3yqh5xg4kafat9w5vs5z0yy05ay66y3w.u64@flex--brendanhiggins.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3YQh5Xg4KAFAt9w5vs5z0yy05Ay66y3w.u64@flex--brendanhiggins.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id f29si785789pga.0.2020.03.23.12.05.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 12:05:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yqh5xg4kafat9w5vs5z0yy05ay66y3w.u64@flex--brendanhiggins.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id g10so3574682pgg.9
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 12:05:05 -0700 (PDT)
X-Received: by 2002:a17:90b:14cb:: with SMTP id jz11mr910275pjb.142.1584990305331;
 Mon, 23 Mar 2020 12:05:05 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:04:59 -0700
Message-Id: <20200323190459.64737-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH rebase v2] kunit: add --make_options
From: "'Brendan Higgins' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: shuah@kernel.org, gthelen@google.com, natechancellor@gmail.com
Cc: linux-kselftest@vger.kernel.org, davidgow@google.com, 
	kunit-dev@googlegroups.com, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, Brendan Higgins <brendanhiggins@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brendanhiggins@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="rlLq4n/m";       spf=pass
 (google.com: domain of 3yqh5xg4kafat9w5vs5z0yy05ay66y3w.u64@flex--brendanhiggins.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3YQh5Xg4KAFAt9w5vs5z0yy05Ay66y3w.u64@flex--brendanhiggins.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Brendan Higgins <brendanhiggins@google.com>
Reply-To: Brendan Higgins <brendanhiggins@google.com>
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

From: Greg Thelen <gthelen@google.com>

The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
optional --make_options flag to kunit.py allowing for the operator to
specify extra build options.

This allows use of the clang compiler for kunit:
  tools/testing/kunit/kunit.py run --defconfig \
    --make_options CC=clang --make_options HOSTCC=clang

Signed-off-by: Greg Thelen <gthelen@google.com>
Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: David Gow <davidgow@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 tools/testing/kunit/kunit.py        | 14 ++++++++++----
 tools/testing/kunit/kunit_kernel.py | 24 ++++++++++++++----------
 2 files changed, 24 insertions(+), 14 deletions(-)

diff --git a/tools/testing/kunit/kunit.py b/tools/testing/kunit/kunit.py
index 650bb4cfc544..7dca74774dd2 100755
--- a/tools/testing/kunit/kunit.py
+++ b/tools/testing/kunit/kunit.py
@@ -24,7 +24,7 @@ KunitResult = namedtuple('KunitResult', ['status','result'])
 
 KunitRequest = namedtuple('KunitRequest', ['raw_output','timeout', 'jobs',
 					   'build_dir', 'defconfig',
-					   'alltests'])
+					   'alltests', 'make_options'])
 
 KernelDirectoryPath = sys.argv[0].split('tools/testing/kunit/')[0]
 
@@ -49,7 +49,7 @@ def get_kernel_root_path():
 def run_tests(linux: kunit_kernel.LinuxSourceTree,
 	      request: KunitRequest) -> KunitResult:
 	config_start = time.time()
-	success = linux.build_reconfig(request.build_dir)
+	success = linux.build_reconfig(request.build_dir, request.make_options)
 	config_end = time.time()
 	if not success:
 		return KunitResult(KunitStatus.CONFIG_FAILURE, 'could not configure kernel')
@@ -59,7 +59,8 @@ def run_tests(linux: kunit_kernel.LinuxSourceTree,
 	build_start = time.time()
 	success = linux.build_um_kernel(request.alltests,
 					request.jobs,
-					request.build_dir)
+					request.build_dir,
+					request.make_options)
 	build_end = time.time()
 	if not success:
 		return KunitResult(KunitStatus.BUILD_FAILURE, 'could not build kernel')
@@ -125,6 +126,10 @@ def main(argv, linux=None):
 				help='Run all KUnit tests through allyesconfig',
 				action='store_true')
 
+	run_parser.add_argument('--make_options',
+				help='X=Y make option, can be repeated.',
+				action='append')
+
 	cli_args = parser.parse_args(argv)
 
 	if cli_args.subcommand == 'run':
@@ -149,7 +154,8 @@ def main(argv, linux=None):
 				       cli_args.jobs,
 				       cli_args.build_dir,
 				       cli_args.defconfig,
-				       cli_args.alltests)
+				       cli_args.alltests,
+				       cli_args.make_options)
 		result = run_tests(linux, request)
 		if result.status != KunitStatus.SUCCESS:
 			sys.exit(1)
diff --git a/tools/testing/kunit/kunit_kernel.py b/tools/testing/kunit/kunit_kernel.py
index 415d8f3c4fe4..63dbda2d029f 100644
--- a/tools/testing/kunit/kunit_kernel.py
+++ b/tools/testing/kunit/kunit_kernel.py
@@ -40,8 +40,10 @@ class LinuxSourceTreeOperations(object):
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
@@ -68,8 +70,10 @@ class LinuxSourceTreeOperations(object):
 		kunit_parser.print_with_timestamp(
 			'Starting Kernel with all configs takes a few minutes...')
 
-	def make(self, jobs, build_dir):
+	def make(self, jobs, build_dir, make_options):
 		command = ['make', 'ARCH=um', '--jobs=' + str(jobs)]
+		if make_options:
+			command.extend(make_options)
 		if build_dir:
 			command += ['O=' + build_dir]
 		try:
@@ -128,19 +132,19 @@ class LinuxSourceTree(object):
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
 		return self.validate_config(build_dir)
 
-	def build_reconfig(self, build_dir):
+	def build_reconfig(self, build_dir, make_options):
 		"""Creates a new .config if it is not a subset of the .kunitconfig."""
 		kconfig_path = get_kconfig_path(build_dir)
 		if os.path.exists(kconfig_path):
@@ -149,19 +153,19 @@ class LinuxSourceTree(object):
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
 
-	def build_um_kernel(self, alltests, jobs, build_dir):
+	def build_um_kernel(self, alltests, jobs, build_dir, make_options):
 		if alltests:
 			self._ops.make_allyesconfig()
 		try:
-			self._ops.make_olddefconfig(build_dir)
-			self._ops.make(jobs, build_dir)
+			self._ops.make_olddefconfig(build_dir, make_options)
+			self._ops.make(jobs, build_dir, make_options)
 		except (ConfigError, BuildError) as e:
 			logging.error(e)
 			return False

base-commit: f90ead0534f28c96dd8149ca13408d167bed9209
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323190459.64737-1-brendanhiggins%40google.com.
