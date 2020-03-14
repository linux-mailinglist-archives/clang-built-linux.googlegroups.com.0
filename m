Return-Path: <clang-built-linux+bncBDQMHQVLY4HRBCHRWHZQKGQE2GET4ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3060D1854F9
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 07:24:10 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id l10sf8703635ilo.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 23:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584167048; cv=pass;
        d=google.com; s=arc-20160816;
        b=tR7Los/U/46uHl3BFRaJvcZ3Wy4C0FVaVfGHkn7ERp+pp7j+YBMD1+gD5v1fapoLIG
         UoVcNrASn3sCV+2clg96qz/Wd1DoWaVy1j2Miz5OPvRZBO/1+3xdKgmEA8SDFbKBBcaq
         yqSuxtzk5v/Xe1KmomBeSb+71RwoMCJhYHVukznYJq/bJsO04D2AH4phOYdT9DO4Zb78
         7sQSS+ECQZ6wC8eMaIOwFCf6lH4R7ufuvlLoU8UReoRwvHKS6nI5+14dGPNJIv6/y/uA
         p8Ib++IOe8BxvLeWgTHKL5snQaT0fQJ5s1Cjb4XCsdNNbWxR57ibsNFGfX/Ll2qkqrks
         eqnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=EwVR86PZtwOgAssfi8mgByLMrXfCPO8hflC8R7+CsIM=;
        b=SRu8DwO6p2xJL7dI5U2LdmsSZ9EsTjC6Tb/mFlSNHLyF8KG6sX16MLOF0HjaSQGOEk
         v9rlkX+VxU35YD0HYYIHg4iAae9rqmNeLz4pqehYEOr43qJVZA05jKNPlK6sgbq4/yq8
         PdHSQm+0vWdnOVogSBfU83K1iKOMrcKWH/srSjbqDgjW8NIbgUKzc19bF5UGZnHd2qRj
         48g2WLgJH5Bg9wX9yCUVHBeMr4Z04mhV3ZIn8yUI+Wxn8xsQ8vwswxhuNaDZGdnJaHqf
         PkHDRI+xl45vEQTQkKinMEgAQOUE9mc4wccvI9X9bH06oRoS2mrFihWti/0teEvPdo+3
         QS3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dT71Y4c2;
       spf=pass (google.com: domain of 3hnhsxgckesmfsgdkdmfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--gthelen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3hnhsXgcKESMFSGDKDMFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--gthelen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EwVR86PZtwOgAssfi8mgByLMrXfCPO8hflC8R7+CsIM=;
        b=i1TZkhsOyQlUDwiQ4ZZF1bjFy/8Ez3JYNIN9ss8fniWM4YA1tEFsfi/M7z7LwdWGG1
         XQ4NJMSE9oEChrkywTkeq58mdBHCBsFG6v5WJ+oH/r6+SQ0RWiihl5121LxwpgUl8fBJ
         kRhFQ3VEArQoL9gvruHvQRvWjXy2uv+Wg+b5uC6Xc+FWyIxUneCZeUqorEsr087QxlwC
         0yxyAm0dvSKA1DGJ0JVZuRwNHnQ1WCH0NtgkwoZj046qQe26RSoq713kEDBsOFVycEf4
         EWBAcC16HTPQ2wIbDyD/6vk1tcSdk+xNZALfQpSH3ZR9yAXrp/Gq1GueBcyEqqWiXQtW
         sRtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EwVR86PZtwOgAssfi8mgByLMrXfCPO8hflC8R7+CsIM=;
        b=TBODsXEN3H2DOY6buDXAtrJhrzznA5FsGJ7X6jvc6FhitGEll6cMYMrNP8WadwQnhW
         Olwfa/zDyBE1tDrA4UPJ2gkwbMCk2eq8Rzzwcy/QsWvXM27YI1PI55Cy+426f9ASYzet
         CwMBNHw71CrL7GeWilW1Ws28/iVws0e2/k7yyzhWawUt6K4gxdno+XUsgkVFxH5KRNiG
         HndCNQWQtoUH5teSAjWBEqsbctAGPK9fu67+T2LNcSdWmexqQvHgXzAenqnR6on73BZG
         U40BGLYy8YJ9OD5bdhMce5SkaqzhOl3XNHfc8YT4l/grt3rXZCKrLI8KLbcqVLWEfjEh
         RNKA==
X-Gm-Message-State: ANhLgQ2Vy2a9I30DnSgJtTkL5X01CAoCoNrktfqHorkEpI2xy4mHj2yY
	v5Zp7rebV5vdYcBEZ0tLXtE=
X-Google-Smtp-Source: ADFU+vsfjYGpsVmPuNrsJQDczwpHobj5gzaE4BFsNd5lqUMVRgz7lHrTT5Klpm0MxzEMCDZ+KMFddw==
X-Received: by 2002:a6b:f20b:: with SMTP id q11mr14168131ioh.99.1584167048274;
        Fri, 13 Mar 2020 23:24:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cf36:: with SMTP id s22ls1482872jar.10.gmail; Fri, 13
 Mar 2020 23:24:07 -0700 (PDT)
X-Received: by 2002:a02:447:: with SMTP id 68mr16992229jab.7.1584167047836;
        Fri, 13 Mar 2020 23:24:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584167047; cv=none;
        d=google.com; s=arc-20160816;
        b=JyYzOaolFh5zES9Iz8ewuMw4FrO8KuqGfJO+eOh1bdYRJ/rsG+sSk7YP6EAtNCl2Cz
         FG9CXaz5o6AZh1cYIDkZ+KnLZ8NVOkDaA3pluv8pcV/kdVsiYrNmGAxwBlWiVQLQg8Kj
         BbvNz86kyY+86PjYlEj19n5vFPLV2tv9tlBXyLYCsjRYCCttvwoKzA3HTEB9twb5T6mp
         c9n/YUTIUR2jlkKs6tFohr+KbH8eXi7nRKRG8hf9HBNoxKkSCb8II+r3v58DgnIXU7iw
         9J9dJHvCy+TIdMXw6GvcvmBdOukiOzJo1qJm8t+quGH/5B3W/4F7sulcB/Vy3+nxTEgD
         hanA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FbErgK09Aa6nJYkuCUrBRaD9zp6nFWInm5nO78O2flo=;
        b=HReqxIc8tfXrY1xcqcnihZ6EteCKckbqkd/uH3JeaitFkmUrRSPm2I20mvZeJUHpoz
         cQXggRAhnLFaGTTKjPDg80OU1GYPX45ME8gT2a0H/yBY1jiRawR8SzhGkjvEhdmii3G9
         Wjsrgk59zfA8l6HJ/XEylylJKZ7C3Oh417bBSdNGljfu+VELGqzEx2j5b7taYvTjq3/j
         +OwES5sk3Cgk7pbMVDxQkkIUavA8bACfdcB7vrpMdfRE0ik2I8JqIK2Nmti7oK6A4i3D
         Q5QUIHGJB6I/o2WnT/QUxgJasPyL+dF0YYkZs6HhUQdC6TQxBNjWmGScVoVBgzIs4RHF
         Vnuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dT71Y4c2;
       spf=pass (google.com: domain of 3hnhsxgckesmfsgdkdmfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--gthelen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3hnhsXgcKESMFSGDKDMFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--gthelen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id e7si474524iof.4.2020.03.13.23.24.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 23:24:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hnhsxgckesmfsgdkdmfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--gthelen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id d9so6949406plo.10
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 23:24:07 -0700 (PDT)
X-Received: by 2002:a17:90a:240a:: with SMTP id h10mr12636800pje.123.1584167046988;
 Fri, 13 Mar 2020 23:24:06 -0700 (PDT)
Date: Fri, 13 Mar 2020 23:24:04 -0700
In-Reply-To: <4bb8eeef-54ac-86a7-4bc4-8e16fc149c1a@kernel.org>
Message-Id: <xr93y2s34fp7.fsf@gthelen.svl.corp.google.com>
Mime-Version: 1.0
References: <20200227063134.261636-1-gthelen@google.com> <20200229015350.GA26612@ubuntu-m2-xlarge-x86>
 <4bb8eeef-54ac-86a7-4bc4-8e16fc149c1a@kernel.org>
Subject: Re: [PATCH] kunit: add --make_options
From: "'Greg Thelen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: shuah <shuah@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-kselftest@vger.kernel.org, 
	kunit-dev@googlegroups.com, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, shuah <shuah@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gthelen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dT71Y4c2;       spf=pass
 (google.com: domain of 3hnhsxgckesmfsgdkdmfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--gthelen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3hnhsXgcKESMFSGDKDMFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--gthelen.bounces.google.com;
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

shuah <shuah@kernel.org> wrote:

> On 2/28/20 6:53 PM, Nathan Chancellor wrote:
>> On Wed, Feb 26, 2020 at 10:31:34PM -0800, 'Greg Thelen' via Clang Built Linux wrote:
>>> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
>>> optional --make_options flag to kunit.py allowing for the operator to
>>> specify extra build options.
>>>
>>> This allows use of the clang compiler for kunit:
>>>    tools/testing/kunit/kunit.py run --defconfig \
>>>      --make_options CC=clang --make_options HOSTCC=clang
>>>
>>> Signed-off-by: Greg Thelen <gthelen@google.com>
>> 
>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> 
>
> Please rebase on Linux 5.6-rc5 and resend. I tried applying
> on Linux 5.6-rc1 as well as 5.6-rc5 and both fail.
>
> thanks,
> -- Shuah

Rebased onto v5.6-rc5 below:

From 0517b2c8b481535fb52bd86e94be1fec9aaeead7 Mon Sep 17 00:00:00 2001
From: Greg Thelen <gthelen@google.com>
Date: Wed, 26 Feb 2020 22:31:34 -0800
Subject: [PATCH v2] kunit: add --make_options

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
index 180ad1e1b04f..1aa4d14dc28d 100755
--- a/tools/testing/kunit/kunit.py
+++ b/tools/testing/kunit/kunit.py
@@ -22,7 +22,9 @@ import kunit_parser
 
 KunitResult = namedtuple('KunitResult', ['status','result'])
 
-KunitRequest = namedtuple('KunitRequest', ['raw_output','timeout', 'jobs', 'build_dir', 'defconfig'])
+KunitRequest = namedtuple('KunitRequest', ['raw_output', 'timeout', 'jobs',
+                                           'build_dir', 'defconfig',
+                                           'make_options'])
 
 KernelDirectoryPath = sys.argv[0].split('tools/testing/kunit/')[0]
 
@@ -47,7 +49,7 @@ def get_kernel_root_path():
 def run_tests(linux: kunit_kernel.LinuxSourceTree,
 	      request: KunitRequest) -> KunitResult:
 	config_start = time.time()
-	success = linux.build_reconfig(request.build_dir)
+	success = linux.build_reconfig(request.build_dir, request.make_options)
 	config_end = time.time()
 	if not success:
 		return KunitResult(KunitStatus.CONFIG_FAILURE, 'could not configure kernel')
@@ -55,7 +57,7 @@ def run_tests(linux: kunit_kernel.LinuxSourceTree,
 	kunit_parser.print_with_timestamp('Building KUnit Kernel ...')
 
 	build_start = time.time()
-	success = linux.build_um_kernel(request.jobs, request.build_dir)
+	success = linux.build_um_kernel(request.jobs, request.build_dir, request.make_options)
 	build_end = time.time()
 	if not success:
 		return KunitResult(KunitStatus.BUILD_FAILURE, 'could not build kernel')
@@ -120,6 +122,10 @@ def main(argv, linux=None):
 				help='Uses a default .kunitconfig.',
 				action='store_true')
 
+	run_parser.add_argument('--make_options',
+				help='X=Y make option, can be repeated.',
+				action='append')
+
 	cli_args = parser.parse_args(argv)
 
 	if cli_args.subcommand == 'run':
@@ -143,7 +149,8 @@ def main(argv, linux=None):
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
index d99ae75ef72f..27758d6d115b 100644
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
@@ -107,19 +111,19 @@ class LinuxSourceTree(object):
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
@@ -128,17 +132,17 @@ class LinuxSourceTree(object):
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
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/xr93y2s34fp7.fsf%40gthelen.svl.corp.google.com.
